local contentlist = require("lib.contentlist")
local featuredata = contentlist.execute_feature_data("bio-speed-changes") -- expected: table of "recipes" and "categories", each with string key (recipe/category name) and float value (time/energy scale)

if settings.startup["guft-feature-bio-speed-changes"].value then
	local category_scales = {}
	local recipe_scales = {}

	for _, mod in pairs(featuredata) do
		for category, scale in pairs(mod.categories or {}) do
			category_scales[category] = scale
		end
		for recipe, scale in pairs(mod.recipes or {}) do
			recipe_scales[recipe] = scale
		end
	end

	for _, recipe in pairs(data.raw["recipe"]) do
		if category_scales[recipe.category] then
			guftlib.recipe.energy_adjust(recipe, category_scales[recipe.category])
		end
		if recipe_scales[recipe.name] then
			guftlib.recipe.energy_adjust(recipe, recipe_scales[recipe.name])
		end
	end
end