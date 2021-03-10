-- defines vehicles/armors/equipment in terms of engines/chassis/roles and tiers
-- valid engines: "powered" and "unpowered"
-- valid roles: "cargo", "support", "combat", and "universal"
-- valid chassis: "player", "car", "train", "spider", "boat", and "air"
-- valid tiers: 1-6 (for bob's support)
-- any combination is valid, but note that there are no vanilla entries for most combinations
-- vehicles and armors have exactly one of each set; i.e. "powered"+"combat"+"car"+2
-- equipment can have 1-N of each; for example, a battery can go in anything, but a vehicle motor can only go in powered vehicles (and likely not aircraft)
-- this will create a grid for every possible combination of the above, and then assign them to vehicles/armors/equipment as specified by its data

local contentlist = require("lib.contentlist")
local featuredata = contentlist.execute_feature_data("equipment")
-- expected: table of "equipment", "armors", and "vehicles"
-- equipment: type, name, engines, roles, chassis, minimum_tier. if engines/roles/chassis are nil, that's "all" (EXCEPT the "player" chassis). roles always includes "universal" and this does not need to be specified. if minimum_tier is nil, that's 1 (effectively "all")
-- vehicles: type, name, engine, role, chassis, tier. must be one of the above EXCEPT the "player" chassis
-- armors: name, role, tier. type is always "armor", chassis is always "player" and engine is always "powered"

if settings.startup["guft-feature-equipment"].value then
	local type_engine = { "powered", "unpowered" }
	local type_role = { "cargo", "support", "combat", "universal" }
	local type_chassis = { "car", "train", "spider", "boat", "air" } -- player NOT included because we don't want not specifying a chassis (which is "all vehicles") to include the player
	local type_chassis_with_player = { "car", "train", "spider", "boat", "air", "player" } -- used only for the "player equipment in vehicles" option

	local tiers = { 1, 2, 3, 4, 5, 6 }
	local tier_sizes = { { 6, 4 }, { 10, 4 }, { 10, 6 }, { 10, 8 }, { 10, 10 }, { 10, 14 } }
	local maximum_tier = tiers[#tiers]
	local role_width_bonuses =
	{
		cargo = 10,
		support = 6,
		combat = 4,
	}

	local used_grids = { }
	local used_categories = { }
	local used_maximum_tiers = { }

	local function tier_name(engine, role, chassis, tier)
		return engine .. "-" .. role .. "-" .. chassis .. "-" .. tostring(tier)
	end

	local function check_roles_for_universal(roles)
		if roles == nil or #roles == 0 then
			return type_role
		end

		local found = false
		for _, role in pairs(roles) do
			if role == "universal" then
				found = true
			end
		end

		if not found then
			table.insert(roles, "universal")
		end

		return roles
	end

	local function build_categories()
		for grid_name, grid in pairs(used_grids) do
			local width_bonus = 0
			if role_width_bonuses[grid.role] then
				width_bonus = role_width_bonuses[grid.role]
			end

			data:extend(
			{
				{
					type = "equipment-grid",
					name =  grid_name,
					equipment_categories = { grid_name },
					width = tier_sizes[grid.tier][1] + width_bonus,
					height = tier_sizes[grid.tier][2],
				}
			})

			data:extend(
			{
				{
					type = "equipment-category",
					name = grid_name
				}
			})
		end
	end

	local function set_vehicle_grid(type, name, engine, role, chassis, tier, no_aai_search)
		local grid_name = tier_name(engine, role, chassis, tier)
		if data.raw[type][name] then
			data.raw[type][name].equipment_grid = grid_name

			if not used_grids[grid_name] then
				used_grids[grid_name] = { engine = engine, role = role, chassis = chassis, tier = tier }
			end
			
			if not used_maximum_tiers[chassis] or used_maximum_tiers[chassis] < tier then
				used_maximum_tiers[chassis] = tier
			end
		end

		-- AAI creates vehicles named e.g. "vehiclename-gunname"
		-- but it has a bunch of complicated rules for which gun gets used if there's several
		-- so instead, we're just gonna assume that anything that starts with "vehiclename-" should match
		-- the overall script will need to always call lower-tier vehicles first since e.g. there's a bunch of "tank" and "tank-2" which this will match
		-- and we can't just check for "one digit suffix" as AAI went and used "mk2" etc. for the miners

		name = name .. "-"

		if no_aai_search then
			return
		end

		for aai_name, aai_vehicle in pairs(data.raw[type]) do
			if string.sub(aai_name, 1, string.len(name)) == name then
				set_vehicle_grid(type, aai_name, engine, role, chassis, tier)
			end
		end
	end

	local function set_armor_grid(type, name, engine, role, chassis, tier)
		local grid_name = tier_name(engine, role, chassis, tier)
		if data.raw[type][name] then
			data.raw[type][name].equipment_grid = grid_name

			if not used_grids[grid_name] then
				used_grids[grid_name] = { engine = engine, role = role, chassis = chassis, tier = tier }
			end
			
			if not used_maximum_tiers[chassis] or used_maximum_tiers[chassis] < tier then
				used_maximum_tiers[chassis] = tier
			end
		end
	end

	local function set_equipment_categories(type, name, engines, roles, chassises, minimum_tier)
		if data.raw[type][name] then
			local categories = {}
			roles = check_roles_for_universal(roles)

			for _, engine in pairs(engines or type_engine) do
				for _, role in pairs(roles or type_role) do
					for _, chassis in pairs(chassises or type_chassis) do
						for tier = (minimum_tier or 1), maximum_tier do
							if used_maximum_tiers[chassis] and tier > used_maximum_tiers[chassis] then
								tier = used_maximum_tiers[chassis]
							end
							local category = tier_name(engine, role, chassis, tier)
				
							if used_grids[category] then
								table.insert(categories, category)
							end
						end
					end
				end
			end

			if #categories > 0 then
				data.raw[type][name].categories = categories
			end
		end
	end

	for _, mod in pairs(featuredata) do
		for _, armor in pairs(mod.armors or {}) do
			set_armor_grid("armor", armor.name, "powered", armor.role, "player", armor.tier)
		end
		
		for _, vehicle in pairs(mod.vehicles or {}) do
			set_vehicle_grid(vehicle.type, vehicle.name, vehicle.engine, vehicle.role, vehicle.chassis, vehicle.tier)
		end
	end

	
	for _, mod in pairs(featuredata) do
		for _, equipment in pairs(mod.equipment or {}) do
			if equipment.chassis and #equipment.chassis == 1 and equipment.chassis[1] == "player" and settings.startup["guft-feature-equipment-player-equipment-in-vehicles"].value then
				set_equipment_categories(equipment.type, equipment.name, equipment.engines, equipment.roles, type_chassis_with_player, equipment.minimum_tier) -- type_chassis excludes "player" as above
			else
				set_equipment_categories(equipment.type, equipment.name, equipment.engines, equipment.roles, equipment.chassis, equipment.minimum_tier)
			end
		end
	end

	build_categories()
end