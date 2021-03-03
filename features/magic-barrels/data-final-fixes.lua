local contentlist = require("lib.contentlist")
local featuredata = contentlist.execute_feature_data("magic-barrels")
-- expected:
-- table of "barrels" (value of name of empty barrel-like-item names)
-- table of "exceptions" (value of name of recipe to not affect, for recipes that actually produce the empty barrel or use it as an intermediate)

local barrel_items = {}
local recipe_execptions = {}

if settings.startup["guft-feature-magic-barrels"].value then
	for _, mod in pairs(featuredata) do
		for _, barrel in pairs(mod.barrels) do
			barrel_items[barrel] = true
		end
		for _, recipe in pairs(mod.exceptions) do
			recipe_execptions[recipe] = true
		end
	end

	for _, recipe in pairs(data.raw.recipe) do
		if not recipe_execptions[recipe.name] then
			-- we only care if this "looks like" a barreling recipe or unbarreling recipe
			-- barreling recipe: exactly two ingredients, one of which is [empty barrel]
			-- unbarreling recipe: same, results instead of ingredients

			
			-- check for every empty barrel. we should never see a recipe that consumes one empty barrel and produces another, so bail as soon as one matches anywhere
			for barrel, _ in pairs(barrel_items) do
				-- due to recipes having normal/expensive options as well as supporting the { name = ... } and { name, amount } formats both, searching for these is annoying
				local match = false

				-- 1: barreling, no expensive mode, expanded table
				if recipe.ingredients and #recipe.ingredients == 2 and (recipe.ingredients[1].name == barrel or recipe.ingredients[2].name == barrel) then
					match = true
				end
				-- 2: barreling, no expensive mode, short table
				if recipe.ingredients and #recipe.ingredients == 2 and (recipe.ingredients[1][1] == barrel or recipe.ingredients[2][1] == barrel) then
					match = true
				end
				-- 3: barreling, expensive mode, expanded table
				if recipe.normal and recipe.normal.ingredients and #recipe.normal.ingredients == 2 and (recipe.normal.ingredients[1].name == barrel or recipe.normal.ingredients[2].name == barrel) then
					match = true
				end
				-- 4: barreling,  expensive mode, short table
				if recipe.normal and recipe.normal.ingredients and #recipe.normal.ingredients == 2 and (recipe.normal.ingredients[1][1] == barrel or recipe.normal.ingredients[2][1] == barrel) then
					match = true
				end

				if match then
					guftlib.recipe.input_remove(recipe, barrel)
					break
				end

				match = false

				-- 5: unbarreling, no expensive mode, expanded table
				if recipe.results and #recipe.results == 2 and (recipe.results[1].name == barrel or recipe.results[2].name == barrel) then
					match = true
				end
				-- 6: unbarreling, no expensive mode, short table
				if recipe.results and #recipe.results == 2 and (recipe.results[1][1] == barrel or recipe.results[2][1] == barrel) then
					match = true
				end
				-- 7: unbarreling, expensive mode, expanded table
				if recipe.normal and recipe.normal.results and #recipe.normal.results == 2 and (recipe.normal.results[1].name == barrel or recipe.normal.results[2].name == barrel) then
					match = true
				end
				-- 8: unbarreling,  expensive mode, short table
				if recipe.normal and recipe.normal.results and #recipe.normal.results == 2 and (recipe.normal.results[1][1] == barrel or recipe.normal.results[2][1] == barrel) then
					match = true
				end

				if match then
					guftlib.recipe.output_remove(recipe, barrel)
					break
				end
			end
		end
	end
end