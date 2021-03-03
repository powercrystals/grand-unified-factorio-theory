local global = {}

function global.replace_item(item_old, item_new)
	if type(item_old) == "string" then
		item_old = data.raw.item[item_old] or data.raw.fluid[item_old]
	end

	if type(item_new) == "string" then
		item_new = data.raw.item[item_new] or data.raw.fluid[item_new]
	end

	if not item_old or not item_new then
		return
	end

	for recipe_name, recipe in pairs(data.raw.recipe) do
		guftlib.recipe.item_replace(recipe_name, item_old.name, item_new.name)
	end
	
	-- no specialized functions for these (yet?)
	for entity_name, generator in pairs(data.raw.generator) do
		if generator.fluid_box and generator.fluid_box.filter == item_old.name then
			generator.fluid_box.filter = item_new.name
		end
		
		if generator.fluid_input and generator.fluid_input.name == item_old.name then
			generator.fluid_input.name = item_new.name
		end
	end

	for entity_name, assembler in pairs(data.raw["assembling-machine"]) do
		if assembler.fluid_boxes then
			for _, fluid_box in pairs(assembler.fluid_boxes) do
				if type(fluid_box) == "table" and fluid_box.filter == item_old.name then
					fluid_box.filter = item_new.name
				end
			end
		end
	end

	data.raw[item_old.type][item_old.name] = nil
end

return global