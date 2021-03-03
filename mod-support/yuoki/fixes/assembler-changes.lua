if data.raw["assembling-machine"]["ye_fassembly_sp"] then
	-- nerf this slightly as it's already super easy to make
	data.raw["assembling-machine"]["ye_fassembly_sp"].crafting_speed = 4

	-- move these to the trade nodes instead of the cimota restructor??
	data.raw["recipe"]["y_military_science_recipe"].category = "yuoki-stargate-recipe"
	data.raw["recipe"]["y_chemical_science_recipe"].category = "yuoki-stargate-recipe"
	data.raw["recipe"]["y_production_science_recipe"].category = "yuoki-stargate-recipe"
	data.raw["recipe"]["y_high-tech_science_recipe"].category = "yuoki-stargate-recipe"
	data.raw["recipe"]["y_space_science_recipe"].category = "yuoki-stargate-recipe"

	-- make the 3rd tier assembler consume the 2nd instead of 1st
	guftlib.recipe.item_replace("ye_fassembly_sp_recipe", "ye_fassembly1", "ye_fassembly2")
end