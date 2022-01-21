if guft.orebackup then
	for name, autoplace in pairs(guft.orebackup.autoplace) do
		if not data.raw["autoplace-control"][name] then
			data.raw["autoplace-control"][name] = autoplace
		end
	end

	for presetname, presettable in pairs(guft.orebackup.map_gen_presets) do
		for name, autoplace in pairs(presettable) do
			if not data.raw["map-gen-presets"]["default"][presetname].basic_settings.autoplace_controls[name] then
				data.raw["map-gen-presets"]["default"][presetname].basic_settings.autoplace_controls[name] = autoplace
			end
		end
	end

	for name, ore in pairs(guft.orebackup.resources) do
		if data.raw["resource"][name] and not data.raw["resource"][name].autoplace then
			data.raw["resource"][name].autoplace = ore
		end
	end

	guft.orebackup.autoplace = nil
	guft.orebackup.map_gen_presets = nil
	guft.orebackup.resources = nil
end