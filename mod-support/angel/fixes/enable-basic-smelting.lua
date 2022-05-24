if settings.startup["guft-misc-angel-basic-smelting"].value then

	local function enable_recipe(recipe_name)
		if data.raw.recipe[recipe_name] and not data.raw.recipe[recipe_name].enabled then
			data.raw.recipe[recipe_name].enabled = true
			data.raw.recipe[recipe_name].hidden = false

			if data.raw.recipe[recipe_name].normal then
				data.raw.recipe[recipe_name].normal.enabled = true
				data.raw.recipe[recipe_name].normal.hidden = false
			end

			if data.raw.recipe[recipe_name].expensive then
				data.raw.recipe[recipe_name].expensive.enabled = true
				data.raw.recipe[recipe_name].expensive.hidden = false
			end
		end
	end

	enable_recipe("copper-plate")
	enable_recipe("iron-plate")
	enable_recipe("lead-plate")
	enable_recipe("tin-plate")
end