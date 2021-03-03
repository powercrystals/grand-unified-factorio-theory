if mods["cargo-ships"] and mods["angelspetrochem"] then
	local rig = table.deepcopy(data.raw["mining-drill"]["oil_rig"])
	rig.name = "gas_rig"

	local rig_power = table.deepcopy(data.raw["generator"]["or_power"])
	rig_power.name = "or_gas_power"

	local rig_item = table.deepcopy(data.raw["item"]["oil_rig"])
	rig_item.name = "gas_rig"
	rig_item.place_result = rig.name

	local rig_from_oil_recipe =
	{
		type = "recipe",
		name = "gas_rig_from_oil_rig",
		enabled = false,
		ingredients = 
		{
			{"oil_rig", 1}
		},
		result = rig_item.name,
		result_count = 1
	}

	local rig_to_oil_recipe =
	{
		type = "recipe",
		name = "gas_rig_to_oil_rig",
		enabled = false,
		ingredients = 
		{
			{rig_item.name, 1}
		},
		result = "oil_rig",
		allow_decomposition = false,
		result_count = 1
	}
	
	data:extend({ rig, rig_power, rig_item, rig_from_oil_recipe, rig_to_oil_recipe })

	table.insert(data.raw.technology["deep_sea_oil_extraction"].effects, { type = "unlock-recipe", recipe = rig_from_oil_recipe.name })
	table.insert(data.raw.technology["deep_sea_oil_extraction"].effects, { type = "unlock-recipe", recipe = rig_to_oil_recipe.name })
end