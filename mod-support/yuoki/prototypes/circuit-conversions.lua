if data.raw["item"]["y-chip-1"] and data.raw["item"]["electronic-components"] then	
	local circuit_2_recipe = table.deepcopy(data.raw["recipe"]["advanced-circuit"])
	circuit_2_recipe.name = "advanced-circuit-y"
	data:extend({ circuit_2_recipe })
	
	local circuit_3_recipe = table.deepcopy(data.raw["recipe"]["processing-unit"])
	circuit_3_recipe.name = "processing-unit-y"
	data:extend({ circuit_3_recipe })
	
	local circuit_4_recipe = table.deepcopy(data.raw["recipe"]["advanced-processing-unit"])
	circuit_4_recipe.name = "advanced-processing-unit-y"
	data:extend({ circuit_4_recipe })

	guftlib.recipe.item_replace(circuit_2_recipe, "electronic-components", "y-chip-1")
	guftlib.recipe.input_set_quantity(circuit_2_recipe, "y-chip-1", 8)

	guftlib.recipe.item_replace(circuit_3_recipe, "electronic-components", "y-chip-1")
	guftlib.recipe.item_replace(circuit_3_recipe, "intergrated-electronics", "y-chip-2")
	guftlib.recipe.input_set_quantity(circuit_3_recipe, "y-chip-1", 8)
	guftlib.recipe.input_set_quantity(circuit_3_recipe, "y-chip-2", 4)

	guftlib.recipe.item_replace(circuit_4_recipe, "electronic-components", "y-chip-1")
	guftlib.recipe.item_replace(circuit_4_recipe, "intergrated-electronics", "y-chip-2")
	guftlib.recipe.input_set_quantity(circuit_4_recipe, "y-chip-1", 4)
	guftlib.recipe.input_set_quantity(circuit_4_recipe, "y-chip-2", 8)

	table.insert(data.raw["technology"]["advanced-electronics"].effects, { type = "unlock-recipe", recipe = "advanced-circuit-y" })
	table.insert(data.raw["technology"]["advanced-electronics-2"].effects, { type = "unlock-recipe", recipe = "processing-unit-y" })
	table.insert(data.raw["technology"]["advanced-electronics-3"].effects, { type = "unlock-recipe", recipe = "advanced-processing-unit-y" })
end