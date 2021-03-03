-- some mods (omnimatter, py) delete other ores, so take a backup so we can put them back
-- angel at least is nice enough to have a switch you can use to stop refining deleting other ores

-- this is called by both data and data-updates in case anything gets added or deleted between the two

if not guft.orebackup then
	guft.orebackup = {}
	guft.orebackup.autoplace = {}
	guft.orebackup.map_gen_presets = {}
	guft.orebackup.resources = {}
end

for _,ore in pairs(data.raw["autoplace-control"]) do
	if ore.category and ore.category == "resource" and ore.name then
		guft.orebackup.autoplace[ore.name] = data.raw["autoplace-control"][ore.name]
	end
end

for presetname,preset in pairs(data.raw["map-gen-presets"]["default"]) do
	if type(preset) == "table" and preset.basic_settings and preset.basic_settings.autoplace_controls then
		guft.orebackup.map_gen_presets[presetname] = {}
		for ore_name,ore in pairs(preset.basic_settings.autoplace_controls) do
			guft.orebackup.map_gen_presets[presetname][ore_name] = preset.basic_settings.autoplace_controls[ore_name]
		end
	end
end

for _,ore in pairs(data.raw["resource"]) do
	if ore.autoplace and ore.name then
		guft.orebackup.resources[ore.name] = data.raw["resource"][ore.name].autoplace
	end
end