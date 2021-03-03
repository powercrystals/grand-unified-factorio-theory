-- originally from cargo ships
-- modified to remove the early return if omnimatter is loaded and duplicated (and refactored) for natural gas

function check_chunk_for_sea_resources(e)
	if not game.active_mods["cargo-ships"] or not settings.startup["guft-newores-cargoships"].value then
		return
	end

	local frequencies = {["none"] = 0, ["minimal"] = 0.0008, ["very-very-low"] = 0.0025, ["very-low"] = 0.0075, ["low"] = 0.015, ["normal"] = 0.03, ["high"] = 0.06, ["very-high"] = 0.12}
	local richnesses = {["very-poor"] = 0.25, ["poor"] = 0.5, ["regular"] = 1, ["good"] = 2, ["very-good"] = 4}

	local deep_tiles = 0
	local surface = e.surface
	if game.active_mods["SeaBlock"] or game.active_mods["ctg"] then -- I have no idea what "ctg" is, it doesn't seem to exist on the workshop, but I'll leave this in from cargo-ships' version anyway
		deep_tiles = surface.count_tiles_filtered({area=e.area,name={"water","water-green","deepwater","deepwater-green"}})
	else
		deep_tiles = surface.count_tiles_filtered({area=e.area, name = "deepwater"})
	end

	if deep_tiles == 1024 then -- make sure we're in deep water (no land in this chunk)
		local oil_frequency = frequencies[settings.startup["guft-newores-cargoships-oil-frequency"].value]
		local oil_richness = richnesses[settings.startup["guft-newores-cargoships-oil-richness"].value]

		local gas_frequency = frequencies[settings.startup["guft-newores-cargoships-gas-frequency"].value]
		local gas_richness = richnesses[settings.startup["guft-newores-cargoships-gas-richness"].value]

		local fissure_frequency = frequencies[settings.startup["guft-newores-cargoships-fissure-frequency"].value]
		local fissure_richness = richnesses[settings.startup["guft-newores-cargoships-fissure-richness"].value]

		local start_x = e.area.left_top.x + 16
		local start_y = e.area.left_top.y + 16
		local distance_from_origin = math.sqrt(start_x*start_x + start_y*start_y)
		local richness_distance_multiplier = 1 + distance_from_origin/4000 + distance_from_origin*math.sqrt(distance_from_origin)/200000

		r = math.random()
		if r < oil_frequency then
			place_deep_resource(surface, start_x, start_y, oil_richness, "deep_oil")
			return -- this will overall make oil more common than gas, but it shouldn't be significantly so, and spawning both in the same place could be messy
		end

		if game.active_mods["angelspetrochem"] then
			r = math.random()
			if r < gas_frequency then
				place_deep_resource(surface, start_x, start_y, gas_richness * richness_distance_multiplier, "deep_gas")
				return --likewise, now gas is more common than fissures, but how many fissures do you really need anyway?
			end

			r = math.random()
			if r < fissure_frequency then
				place_deep_resource(surface, start_x, start_y, fissure_richness * richness_distance_multiplier, "deep_fissure")
				return
			end
		end
	end
end

function place_deep_resource(surface, x, y, richness, resource)
	local offset_x = math.random(-10,10)
	local offset_y = math.random(-10,10)
	local deposit_position = {x + offset_x, y + offset_y}
	local richness_randomizer = 3 / (2 * math.random() + 1)
	local deposit_amount = 500000 * richness * richness_randomizer 

	surface.create_entity({name=resource, amount=deposit_amount, position=deposit_position})
end