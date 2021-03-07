local recipe = {}
local debug = require("lib.debug")

function recipe.input_contains(recipe, item)
	if type(recipe) == "string" then
		recipe = data.raw.recipe[recipe]
	end

	if type(item) == "string" then
		item = data.raw.item[item] or data.raw.fluid[item]
	end

	if not recipe or not item then
		return
	end

	if recipe.ingredients then
		for index, ingredient in pairs(recipe.ingredients) do
			if ingredient.name == item.name or ingredient[1] == item.name then
				return true
			end
		end
	end

	if recipe.normal and recipe.normal.ingredients then
		for index, ingredient in pairs(recipe.normal.ingredients) do
			if ingredient.name == item.name or ingredient[1] == item.name then
				return true
			end
		end
	end

	if recipe.expensive and recipe.expensive.ingredients then
		for index, ingredient in pairs(recipe.expensive.ingredients) do
			if ingredient.name == item.name or ingredient[1] == item.name then
				return true
			end
		end
	end

	return false
end

function recipe.input_add(recipe, item, type, quantity)
	if type(recipe) == "string" then
		recipe = data.raw.recipe[recipe]
	end

	if type(item) == "string" then
		item = data.raw.item[item] or data.raw.fluid[item]
	end

	if not recipe or not item then
		return
	end

	local input = { name = item.name, type = type, amount = quantity }

	if recipe.ingredients then
		table.insert(recipe.ingredients, input)
	end

	if recipe.normal and recipe.normal.ingredients then
		table.insert(recipe.normal.ingredients, input)
	end

	if recipe.expensive and recipe.expensive.ingredients then
		table.insert(recipe.expensive.ingredients, input)
	end
end

function recipe.input_remove(recipe, item)
	if type(recipe) == "string" then
		recipe = data.raw.recipe[recipe]
	end

	if type(item) == "string" then
		item = data.raw.item[item] or data.raw.fluid[item]
	end

	if not recipe or not item then
		return
	end

	if recipe.ingredients then
		for index, ingredient in pairs(recipe.ingredients) do
			if ingredient.name == item.name then
				table.remove(recipe.ingredients, index)
			end
		end
	end

	if recipe.normal and recipe.normal.ingredients then
		for index, ingredient in pairs(recipe.normal.ingredients) do
			if ingredient.name == item.name then
				table.remove(recipe.normal.ingredients, index)
			end
		end
	end

	if recipe.expensive and recipe.expensive.ingredients then
		for index, ingredient in pairs(recipe.expensive.ingredients) do
			if ingredient.name == item.name then
				table.remove(recipe.expensive.ingredients, index)
			end
		end
	end
end

function recipe.input_set_quantity(recipe, item, quantity)
	if type(recipe) == "string" then
		recipe = data.raw.recipe[recipe]
	end

	if type(item) == "string" then
		item = data.raw.item[item] or data.raw.fluid[item]
	end

	if not recipe or not item then
		return
	end

	if recipe.ingredients then
		for index, ingredient in pairs(recipe.ingredients) do
			if ingredient.name == item.name then
				ingredient.amount = quantity
			end
		end
	end

	if recipe.normal and recipe.normal.ingredients then
		for index, ingredient in pairs(recipe.normal.ingredients) do
			if ingredient.name == item.name then
				ingredient.amount = quantity
			end
		end
	end

	if recipe.expensive and recipe.expensive.ingredients then
		for index, ingredient in pairs(recipe.expensive.ingredients) do
			if ingredient.name == item.name then
				ingredient.amount = quantity
			end
		end
	end
end

function recipe.output_contains(recipe, item)
	if type(recipe) == "string" then
		recipe = data.raw.recipe[recipe]
	end

	if type(item) == "string" then
		item = data.raw.item[item] or data.raw.fluid[item]
	end

	if not recipe or not item then
		return
	end

	if recipe.results then
		for index, result in pairs(recipe.results) do
			if result.name == item.name or result[1] == item.name then
				return true
			end
		end
	end

	if recipe.normal and recipe.normal.results then
		for index, result in pairs(recipe.normal.results) do
			if result.name == item.name or result[1] == item.name then
				return true
			end
		end
	end

	if recipe.expensive and recipe.expensive.results then
		for index, result in pairs(recipe.expensive.results) do
			if result.name == item.name or result[1] == item.name then
				return true
			end
		end
	end

	return false
end

function recipe.output_remove(recipe, item)
	if type(recipe) == "string" then
		recipe = data.raw.recipe[recipe]
	end

	if type(item) == "string" then
		item = data.raw.item[item] or data.raw.fluid[item]
	end

	if not recipe or not item then
		return
	end

	if recipe.results then
		for index, result in pairs(recipe.results) do
			if result.name == item.name then
				table.remove(recipe.results, index)
			end
		end
	end

	if recipe.normal and recipe.normal.results then
		for index, result in pairs(recipe.normal.results) do
			if result.name == item.name then
				table.remove(recipe.normal.results, index)
			end
		end
	end

	if recipe.expensive and recipe.expensive.results then
		for index, result in pairs(recipe.expensive.results) do
			if result.name == item.name then
				table.remove(recipe.expensive.results, index)
			end
		end
	end
end

function recipe.output_set_quantity(recipe, item, quantity)
	if type(recipe) == "string" then
		recipe = data.raw.recipe[recipe]
	end

	if type(item) == "string" then
		item = data.raw.item[item] or data.raw.fluid[item]
	end

	if not recipe or not item then
		return
	end

	if recipe.results then
		for index, result in pairs(recipe.results) do
			if result.name == item.name then
				result.amount = quantity
			end
		end
	end

	if recipe.normal and recipe.normal.results then
		for index, result in pairs(recipe.normal.results) do
			if result.name == item.name then
				result.amount = quantity
			end
		end
	end

	if recipe.expensive and recipe.expensive.results then
		for index, result in pairs(recipe.expensive.results) do
			if result.name == item.name then
				result.amount = quantity
			end
		end
	end
end

function recipe.item_replace(recipe, item_old, item_new)
	if type(recipe) == "string" then
		recipe = data.raw.recipe[recipe]
	end

	if type(item_old) == "string" then
		item_old = data.raw.item[item_old] or data.raw.fluid[item_old]
	end

	if type(item_new) == "string" then
		item_new = data.raw.item[item_new] or data.raw.fluid[item_new]
	end

	if not recipe or not item_old or not item_new then
		return
	end

	if recipe.main_product == item_old.name then
		recipe.main_product = item_new.name
	end

	if recipe.ingredients then
		for _, item in pairs(recipe.ingredients) do
			if item.name == item_old.name then
				item.name = item_new.name
			elseif item[1] == item_old.name then
				item[1] = item_new.name
			end
		end
	end

	if recipe.results then
		for _, item in pairs(recipe.results) do
			if item.name == item_old.name then
				item.name = item_new.name
			elseif item[1] == item_old.name then
				item[1] = item_new.name
			end
		end
	end

	if recipe.result == item_old.name then
		recipe.result = item_new.name
	end

	if recipe.normal then
		if recipe.normal.ingredients then
			for _, item in pairs(recipe.normal.ingredients) do
				if item.name == item_old.name then
					item.name = item_new.name
				elseif item[1] == item_old.name then
					item[1] = item_new.name
				end
			end
		end

		if recipe.normal.results then
			for _, item in pairs(recipe.normal.results) do
				if item.name == item_old.name then
					item.name = item_new.name
				elseif item[1] == item_old.name then
					item[1] = item_new.name
				end
			end
		end

		if recipe.normal.result == item_old.name then
			recipe.normal.result = item_new.name
		end
	end

	if recipe.expensive then
		if recipe.expensive.ingredients then
			for _, item in pairs(recipe.expensive.ingredients) do
				if item.name == item_old.name then
					item.name = item_new.name
				elseif item[1] == item_old.name then
					item[1] = item_new.name
				end
			end
		end

		if recipe.expensive.results then
			for _, item in pairs(recipe.expensive.results) do
				if item.name == item_old.name then
					item.name = item_new.name
				elseif item[1] == item_old.name then
					item[1] = item_new.name
				end
			end
		end

		if recipe.expensive.result == item_old.name then
			recipe.expensive.result = item_new.name
		end
	end
end

function recipe.energy_adjust(recipe, multiplier)
	local recipe_name

	if type(recipe) == "string" then
		recipe_name = recipe
		recipe = data.raw.recipe[recipe]
	elseif type(recipe == "table") then
		recipe_name = recipe.name
	end

	if not recipe then
		debug.log("Recipe " .. recipe_name .. " not found for energy_adjust", 2)
		return
	end
	
	debug.log("Updating recipe " .. recipe_name .. " with energy multiplier " .. multiplier, 2)

	if recipe.energy_required then
		recipe.energy_required = recipe.energy_required * multiplier
	end

	if recipe.normal and recipe.normal.energy_required then
		recipe.normal.energy_required = recipe.normal.energy_required * multiplier
	end

	if recipe.expensive and recipe.expensive.energy_required then
		recipe.expensive.energy_required = recipe.expensive.energy_required * multiplier
	end
end

function recipe.energy_set(recipe, energy)
	if type(recipe) == "string" then
		recipe = data.raw.recipe[recipe]
	end

	if not recipe then
		return
	end

	if recipe.energy_required then
		recipe.energy_required = energy
	end

	if recipe.normal and recipe.normal.energy_required then
		recipe.normal.energy_required = energy
	end

	if recipe.expensive and recipe.expensive.energy_required then
		recipe.expensive.energy_required = energy
	end
end

function recipe.prerequisite_add(recipe, technology)
	if type(recipe) == "string" then
		recipe = data.raw.recipe[recipe]
	end

	if type(technology) == "string" then
		technology = data.raw.technology[technology]
	end

	if not recipe or not technology then
		return
	end

	table.insert(technology.effects, { type = "unlock-recipe", recipe = recipe.name })
end

function recipe.prerequisite_remove(recipe, technology)
	if type(recipe) == "string" then
		recipe = data.raw.recipe[recipe]
	end

	if type(technology) == "string" then
		technology = data.raw.technology[technology]
	end

	if not recipe or not technology then
		return
	end

	for index, effect in pairs(technology.effects) do
		if effect.type == "unlock-recipe" and effect.recipe == recipe.name then
			technology.effects[index] = nil
		end
	end
end

function recipe.delete(recipe)
	if type(recipe) == "string" then
		recipe = data.raw.recipe[recipe]
	end

	if not recipe then
		return
	end

	for _, technology in pairs(data.raw["technology"]) do
		if technology.effects then
			for index, effect in pairs(technology.effects) do
				if effect.type == "unlock-recipe" and effect.recipe == recipe.name then
					technology.effects[index] = nil
				end
			end
		end
	end

	data.raw.recipe[recipe.name] = nil
end

return recipe