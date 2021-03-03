if mods["angelssmelting"] and mods["248k"] then
	data:extend(
	{
		{
			type = "recipe",
			name = "molten-industrial-steel-smelting",
			category = "induction-smelting",
			subgroup = "angels-industrial-steel-casting",
			energy_required = 4,
			ingredients =
			{
				{type = "item", name = "ingot-iron", amount = 12},
				{type = "item", name = "ingot-steel", amount = 12},
				{type = "item", name = "ingot-aluminium", amount = 12}
			},
			results =
			{
				{type = "fluid", name = "liquid-molten-industrial-steel", amount = 360}
			},
			main_product = "liquid-molten-industrial-steel",
			icon_size = 32,
			order = "f[liquid-molten-industrial-steel]",
		},
		{
			type = "recipe",
			name = "angels-plate-industrial-steel",
			category = "casting",
			subgroup = "angels-industrial-steel-casting",
			normal =
			{
				energy_required = 4,
				ingredients =
				{
					{type = "fluid", name = "liquid-molten-industrial-steel", amount = 40}
				},
				results =
				{
					{type = "item", name = "fi_industrial_steel_item", amount = 4}
				}
			},
			icons =
			{
				{
					icon = "__248k__/ressources/fission/fi_materials/fi_materials_industrial_steel_item.png",
					icon_size = 64
				},
				{
					icon = "__grand-unified-factorio-theory__/graphics/items/molten-industrial-steel.png",
					scale = 0.4375,
					shift = {-10, -10}
				}
			},
			icon_size = 32,
			order = "i[angels-plate-industrial-steel]-a"
		},
	})
end