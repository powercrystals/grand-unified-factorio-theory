if mods["angelssmelting"] and mods["Yuoki"] then
	data:extend(
	{
		{
			type = "recipe",
			name = "rich-dust-mixing",
			category = "powder-mixing",
			subgroup = "angels-orangestuff",
			energy_required = 1,
			ingredients =
			{
				{type = "item", name = "y-crush-yres1", amount = 10},
				{type = "item", name = "y-crush-yres2", amount = 10}
			},
			results =
			{
				{type = "item", name = "y-richdust", amount = 20}
			},
			icons =
			{
				{
					icon = "__Yuoki__/graphics/icons/richdust.png"
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_1.png",
					tint = angelsmods.smelting.number_tint,
					scale = 0.32,
					shift = {-12, -12}
				}
			},
			icon_size = 32,
			order = "e[solid-richdust]-a"
		},
		{
			type = "recipe",
			name = "rich-dust-smelting",
			category = "blast-smelting",
			subgroup = "angels-orangestuff",
			energy_required = 1,
			ingredients =
			{
				{type = "item", name = "y-richdust", amount = 8}
			},
			results =
			{
				{type = "item", name = "y-orange-stuff", amount = 8}
			},
			icons =
			{
				{
					icon = "__Yuoki__/graphics/icons/orange-stuff.png"
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_1.png",
					tint = angelsmods.smelting.number_tint,
					scale = 0.32,
					shift = {-12, -12}
				}
			},
			icon_size = 32,
			order = "e[solid-orangestuff]-a"
		},
	})
end