local contentlist = require("lib.contentlist")
local featuredata = contentlist.execute_feature_data("allow-decomposition-updates")
-- expected: table of "recipes", "categories", and "roots"
-- "recipes" and "categories" are a table of "name" : bool
-- roots is a table of _, "name"

local function set_allow_decomposition(recipe, value)
	recipe.allow_decomposition = value
	if recipe.normal then
		recipe.normal.allow_decomposition = value
	end
	if recipe.expensive then
		recipe.expensive.allow_decomposition = value
	end
end

local function recipe_produces_item(recipe, item)
	if recipe.result == item then
		return true
	end

	if recipe.results then
		for _, result in pairs(recipe.results) do
			if result.name == item then
				return true
			end
		end
	end

	if recipe.normal and recipe.normal.results then
		for _, result in pairs(recipe.normal.results) do
			if result.name == item then
				return true
			end
		end
	end

	if recipe.expensive and recipe.expensive.results then
		for _, result in pairs(recipe.expensive.results) do
			if result.name == item then
				return true
			end
		end
	end

	return false
end

for _, recipe in pairs(data.raw["recipe"]) do
	for _, mod in pairs(featuredata) do
		mod.categories = mod.categories or {}
		mod.recipes = mod.recipes or {}
		mod.roots = mod.roots or {}

		if mod.categories[recipe.category] ~= nil then
			set_allow_decomposition(recipe, mod.categories[recipe.category])
		end

		if mod.recipes[recipe.name] ~= nil then
			set_allow_decomposition(recipe, mod.recipes[recipe.name])
		end

		for _, item in pairs(mod.roots) do
			if recipe_produces_item(recipe, item) then
				set_allow_decomposition(recipe, false)
			end
		end
	end
end