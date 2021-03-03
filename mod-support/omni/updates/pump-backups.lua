-- if omnimatter is installed, it's going to also change water pumps to omniwater, so we have to back up those too
if mods["omnimatter"] then
	guft.orebackup.pump_fluids = {}
	guft.orebackup.pump_recipes = {}

	if settings.startup["guft-misc-no-omnic-water"] then
		for name,pump in pairs(data.raw["offshore-pump"]) do
			guft.orebackup.pump_fluids[name] = pump.fluid
		end

		for name,pump in pairs(data.raw["assembling-machine"]) do
			if pump.fixed_recipe and pump.fluid then
				guft.orebackup.pump_recipes[name] = table.deepcopy(pump.fixed_recipe)
				guft.orebackup.pump_fluids[name] = pump.fluid
			end
		end
	end
end