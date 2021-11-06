local builder = {}

function builder.icon_create_overlay(item_original, overlays)
	local icons = {}

	if item_original.icons then
		icons = table.deepcopy(item_original.icons)
	else
		table.insert(icons, { icon = item_original.icon, icon_size = item_original.icon_size, tiny = item_original.tint })
	end

	for _, overlay in pairs(overlays) do
		table.insert(icons, overlay)
	end

	return icons
end

function builder.build_ore_crushing_recipe(ore, subgroup)
	if not data.raw.item[ore] or not data.raw["recipe-category"]["ore-sorting"] then
		return
	end

	subgroup = "crushing-ore-" .. subgroup

	if not data.raw["item-subgroup"][subgroup] then
		data:extend(
		{
			{
				type = "item-subgroup",
				name = subgroup,
				group = "resource-refining",
				order = "z[" .. subgroup .. "]"
			}
		})
	end

	local recipe =
		{
			type = "recipe",
			name = "crushing-" .. ore,
			category = "ore-sorting",
			subgroup = subgroup,
			energy_required = 1,
			ingredients =
			{
				{type="item", name=ore, amount=4},
			},
			results=
			{
				{type="item", name="stone-crushed", amount=1}
			},
			icons = builder.icon_create_overlay(data.raw.item[ore], { { icon = "__angelsrefining__/graphics/icons/stone-crushed.png", scale = 0.75, shift = {4, 4}, icon_size = 32 } }),
			icon_size = data.raw.item[ore].icon_size,
			order = "c[" .. ore .. "]",
		}

	data:extend({ recipe })
end

function builder.build_gem_crushing_recipe(gem, subgroup)
	if not data.raw.item[gem] or not data.raw["recipe-category"]["ore-sorting"] then
		return
	end

	subgroup = "crushing-gem-" .. subgroup

	if not data.raw["item-subgroup"][subgroup] then
		data:extend(
		{
			{
				type = "item-subgroup",
				name = subgroup,
				group = "resource-refining",
				order = "z[" .. subgroup .. "]"
			}
		})
	end

	local recipe = 
		{
			type = "recipe",
			name = "crushing-" .. gem,
			category = "ore-sorting",
			subgroup = subgroup,
			energy_required = 1,
			ingredients =
			{
				{type="item", name=gem, amount=4},
			},
			results=
			{
				{type="item", name="crystal-dust", amount=1}
			},		
			icons = builder.icon_create_overlay(data.raw.item[gem], { { icon = "__angelsrefining__/graphics/icons/crystal-dust.png", scale = 0.75, shift = {4, 4}, icon_size = 32 } }),
			icon_size = data.raw.item[gem].icon_size,
			order = "c[" .. gem .. "]",
		}

	data:extend({ recipe })
end

function builder.build_unicomp_conversion_from_other(item, item_type, tier, subgroup)
	if not data.raw[item_type][item] then
		return
	end

	subgroup = "unicomp-from-" .. subgroup

	if not data.raw["item-subgroup"][subgroup] then
		data:extend(
		{
			{
				type = "item-subgroup",
				name = subgroup,
				group = "yuoki-atomics",
				order = "uf[" .. subgroup .. "]"
			}
		})
	end

	local tier_quantities = { 24, 16, 12, 8, 4 }

	local input_quantity = tier_quantities[tier]

	if item_type == "fluid" then
		input_quantity = input_quantity * 10
	end

	local recipe =
		{
			type = "recipe",
			name = "unicomp-from-" .. item,
			category = "yuoki-atomics-recipe",
			subgroup = subgroup,
			energy_required = 1,
			ingredients =
			{
				{type=item_type, name=item, amount=input_quantity},
			},
			results=
			{
				{type="item", name="y-unicomp-a2", amount=1}
			},
			main_product = "y-unicomp-a2",
			icons = builder.icon_create_overlay(data.raw[item_type][item], { { icon = "__grand-unified-factorio-theory__/graphics/overlays/unicomp-from-other.png", icon_size = 32 } }),
			icon_size = data.raw[item_type][item].icon_size,
			order = "f[" .. item .. "]",
		}

	data:extend({ recipe })
end

function builder.build_unicomp_conversion_to_other(item, item_type, tier, subgroup)
	if not data.raw[item_type][item] then
		return
	end

	subgroup = "unicomp-to-" .. subgroup

	if not data.raw["item-subgroup"][subgroup] then
		data:extend(
		{
			{
				type = "item-subgroup",
				name = subgroup,
				group = "yuoki-atomics",
				order = "ut[" .. subgroup .. "]"
			}
		})
	end

	local tier_quantities = { 1, 2, 3, 4, 5 }

	local result_quantity

	if item_type == "fluid" then
		result_quantity = 10
	else
		result_quantity = 1
	end

	local recipe =
		{
			type = "recipe",
			name = "unicomp-to-" .. item,
			category = "yuoki-atomics-recipe",
			subgroup = subgroup,
			energy_required = 1,
			ingredients =
			{
				{type="item", name="y-unicomp-a2", amount=tier_quantities[tier]}
			},
			results=
			{
				{type=item_type, name=item, amount=result_quantity},
			},
			main_product = item,
			icons = builder.icon_create_overlay(data.raw[item_type][item], { { icon = "__grand-unified-factorio-theory__/graphics/overlays/unicomp-to-other.png", icon_size = 32 } }),
			icon_size = data.raw[item_type][item].icon_size,
			order = "t[" .. item .. "]",
			allow_decomposition = false,
		}

	data:extend({ recipe })
end

function builder.build_schall_alien_ore_conversion_to_other(item, item_type, tier)
	if not data.raw[item_type][item] then
		return
	end

	local tier_quantities = { 1, 2, 1, 1, 1 }
	local tier_items = { "alien-ore-1", "alien-ore-1", "alien-ore-2", "alien-ore-3", "alien-artifact" }

	local result_quantity
	if item_type == "fluid" then
		result_quantity = 10
	else
		result_quantity = 1
	end
	local recipe =
		{
			type = "recipe",
			name = tier_items[tier] .. "-to-" .. item,
			category = "advanced-crafting",
			subgroup = "alien-ore-recipes",
			energy_required = 1,
			ingredients =
			{
				{type="item", name=tier_items[tier], amount=tier_quantities[tier]}
			},
			results=
			{
				{type=item_type, name=item, amount=result_quantity},
			},
			main_product = item,
			icons = builder.icon_create_overlay(item, { { icon = data.raw["item"][tier_items[tier]].icon, icon_size = 32, scale = 0.75, shift = {-4, -4} } }),
			icon_size = data.raw[item_type][item].icon_size,
			order = "t[" .. item .. "]",
			allow_decomposition = false
		}

	data:extend({ recipe })
end

return builder