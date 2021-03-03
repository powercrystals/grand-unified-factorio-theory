local function set_fast_replace_single(type, entity, next_entity)
	if data.raw[type][entity] and data.raw[type][next_entity] then
		data.raw[type][entity].next_upgrade = next_entity
	end
end

local function set_fast_replace_group(type, entities)
	local i

	for i = 1, #entities - 1 do
		set_fast_replace_single(type, entities[i], entities[i+1])
	end
end

local function set_fast_replaces_auto(type, entity)
	local i = 2

	set_fast_replace_single(type, entity, entity .. "-" .. i)
	while data.raw[type][entity .. "-" .. (i + 1)] do
	set_fast_replace_single(type, entity .. "-" .. i, entity .. "-" .. (i + 1))
		i = i + 1
	end
end

local contentlist = require("lib.contentlist")
local featuredata = contentlist.execute_feature_data("fast-replace") -- expected: table of "singles", "groups", and "autos", with values corresponding to the methods above

for _, mod in pairs(featuredata) do
	for _, single in pairs(mod.singles or {}) do
		set_fast_replace_single(single.type, single.entity, single.next_entity)
	end

	for _, group in pairs(mod.groups or {}) do
		set_fast_replace_group(group.type, group.entities)
	end

	for _, auto in pairs(mod.autos or {}) do
		set_fast_replaces_auto(auto.type, auto.entity)
	end
end

-- find missing fast replaces (note that factorio will validate that the next_upgrade target has at least one recipe that can build it!)

--local fast_replace_categories = { "assembling-machine", "boiler", "burner-generator", "container", "gate", "logistic-container", "furnace", "electric-pole", "generator", "heat-interface",
--"heat-pipe", "inserter", "lab", "mining-drill", "pump", "radar", "roboport", "solar-panel", "storage-tank", "wall"}

--for _, category in pairs(fast_replace_categories) do
--	for _, entity in pairs(data.raw[category]) do
--		if entity.fast_replaceable_group and not entity.next_upgrade then
--			log("Entity " .. entity.name .. " in category " .. category .. " has a fast replace group " .. entity.fast_replaceable_group .. " but does not specify the next upgrade")
--		end
--		if not entity.fast_replaceable_group and entity.next_upgrade then
--			log("Entity " .. entity.name .. " has a fast replace next upgrade but does not specify the group")
--		end
--	end
--end