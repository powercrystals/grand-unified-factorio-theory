guftlib.recipe.input_set_quantity("ye_buechse_rosa_recipe", "ye_smoked_fish", 2)
guftlib.recipe.output_set_quantity("ye_fish3_recipe", "ye_fish3", 20)
guftlib.recipe.output_set_quantity("ye_fish2_recipe", "ye_fish2", 5)
guftlib.recipe.output_set_quantity("ye_buechse_white_recipe", "ye_buechse_white", 6)

if data.raw.tool["advanced-logistic-science-pack"] then
	guftlib.recipe.item_replace("ye_buechse_fleisch_export_recipe", "production-science-pack", "advanced-logistic-science-pack")
end

-- cult of nature
guftlib.recipe.output_set_quantity("y_unlimited_wood", "wood", 300)

guftlib.recipe.energy_set("y_modul_green_op_recipe", 10)
guftlib.recipe.input_set_quantity("y_modul_green_op_recipe", "y_greensign", 1)

guftlib.recipe.energy_set("y_greensign_ulti-recipe", 1)

-- cult of profit
guftlib.recipe.energy_set("ypfw_trader_sign_recipe", 1)
guftlib.recipe.output_set_quantity("ypfw_trader_sign_recipe", "ypfw_trader_sign", 10)