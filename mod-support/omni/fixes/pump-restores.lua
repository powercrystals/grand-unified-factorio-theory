if mods["omnimatter"] and settings.startup["guft-misc-no-omnic-water"].value then
	for name,pump in pairs(data.raw["offshore-pump"]) do
		pump.fluid = guft.orebackup.pump_fluids[name]
		pump.fluid_box.filter = pump.fluid
	end

	for name,pump in pairs(data.raw["assembling-machine"]) do
		if pump.fixed_recipe and pump.fluid then
			pump.fixed_recipe = guft.orebackup.pump_recipes[name]
			pump.fluid = guft.orebackup.pump_fluids[name]
			pump.fluid_box.filter = pump.fluid
		end
	end

	-- omnimatter also likes to delete pumpjacks, so, we need to put those back
	if data.raw.technology["oil-gas-extraction"] then
		table.insert(data.raw.technology["oil-gas-extraction"].effects, { type = "unlock-recipe", recipe = "pumpjack" })
	else
		table.insert(data.raw.technology["oil-processing"].effects, { type = "unlock-recipe", recipe = "pumpjack" })
	end

	if data.raw.technology["bob-pumpjacks-1"] then
		data.raw.technology["bob-pumpjacks-1"].enabled = true
		data.raw.technology["bob-pumpjacks-2"].enabled = true
		data.raw.technology["bob-pumpjacks-3"].enabled = true
		data.raw.technology["bob-pumpjacks-4"].enabled = true		

		if data.raw.technology["oil-gas-extraction"] then
			data.raw.technology["bob-pumpjacks-1"].prerequisites = { "oil-gas-extraction" }
		else
			data.raw.technology["bob-pumpjacks-1"].prerequisites = { "oil-processing" }
		end
	end
end