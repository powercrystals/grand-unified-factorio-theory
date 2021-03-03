if settings.startup["guft-feature-hand-craft-filter"].value then
	local player_craft_categories = {}
	for _,category in pairs(data.raw["character"]["character"].crafting_categories) do
		player_craft_categories[category] = true
	end

	local function is_recipe_hand_craft_compatible(recipe)
		if recipe.category and not player_craft_categories[recipe.category] then
			--log("Recipe " .. recipe.name .. " is not hand craftable: wrong category " .. (recipe.category or "nil"))
			return false
		end

		if recipe.ingredients then
			for _, ingredient in pairs(recipe.ingredients) do
				if ingredient.type == "fluid" then
					--log("Recipe " .. recipe.name .. " is not hand craftable: fluid ingredient")
					return false
				end
			end
		end
		if recipe.normal and recipe.normal.ingredients then
			for _, ingredient in pairs(recipe.normal.ingredients) do
				if ingredient.type == "fluid" then
					--log("Recipe " .. recipe.name .. " is not hand craftable: fluid ingredient")
					return false
				end
			end
		end
		if recipe.results then
			for _, result in pairs(recipe.results) do
				if result.type == "fluid" then
					--log("Recipe " .. recipe.name .. " is not hand craftable: fluid result")
					return false
				end
			end
		end

		return true
	end

	for _, recipe in pairs(data.raw["recipe"]) do
		if not is_recipe_hand_craft_compatible(recipe) then
			--log("Hiding recipe " .. recipe.name)
			recipe.hide_from_player_crafting = true
		end
	end
end