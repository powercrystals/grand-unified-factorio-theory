if mods["angelssmelting"] and mods["Yuoki"] and mods["yi_engines"] then
	data:extend(
		{
			{
				type = "recipe",
				name = "molten-hmetal-smelting",
				category = "induction-smelting",
				subgroup = "angels-hmetal-casting",
				energy_required = 4,
				ingredients = 
				{
					{type = "item", name = "ingot-steel", amount = 12},
					{type = "item", name = "ingot-lead", amount = 12}
				},
				results =
				{
					{type = "fluid", name = "liquid-molten-hmetal", amount = 240}
				},
				main_product = "liquid-molten-hmetal",
				icon_size = 32,
				order = "f[liquid-molten-hmetal]",
			},
			{
				type = "recipe",
				name = "angels-plate-hmetal",
				category = "casting",
				subgroup = "angels-hmetal-casting",
				normal =
				{
					energy_required = 4,
					ingredients =
					{
						{type = "fluid", name = "liquid-molten-hmetal", amount = 40}
					},
					results =
					{
						{type = "item", name = "yie_hard_metals", amount = 4}
					}
				},
				icons =
				{
					{
						icon = "__yi_engines__/graphics/icons/blechrolle_grau.png"
					},
					{
						icon = "__grand-unified-factorio-theory__/graphics/items/molten-hmetal.png",
						scale = 0.4375,
						shift = {-10, -10}
					}
				},
				icon_size = 32,
				order = "i[angels-plate-hmetal]-a"
			},
		}
	)
end