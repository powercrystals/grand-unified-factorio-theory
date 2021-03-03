if mods["angelssmelting"] and mods["Yuoki"] then
	data:extend(
	{
		{
			type = "recipe",
			name = "crushing-durotal",
			category = "ore-sorting-t1",
			subgroup = "yuoki-crushing",
			energy_required = 1,
			ingredients =
			{
				{type="item", name="y-res1", amount=1},
			},
			results=
			{
				{type="item", name="y-crush-yres1", amount=2},
				{type = "item", name = "stone-crushed", amount = 1}
			}, 
			icon = "__Yuoki__/graphics/icons/dust-blue.png",
			icon_size = 32,
			order = "c[durotal]",
		},
		{
			type = "recipe",
			name = "durotal-ore-processing",
			category = "ore-processing",
			subgroup = "angels-durotal",
			energy_required = 2,
			ingredients =
			{
				{type = "item", name = "y-res1", amount = 4}
			},
			results = {
				{type = "item", name = "processed-durotal", amount = 2}
			},
			icon_size = 32,
			order = "b[processed-durotal]",
		},
		{
			type = "recipe",
			name = "durotal-processed-processing",
			category = "pellet-pressing",
			subgroup = "angels-durotal",
			energy_required = 2,
			ingredients =
			{
				{type = "item", name = "processed-durotal", amount = 3}
			},
			results = {
				{type = "item", name = "pellet-durotal", amount = 4}
			},
			icon_size = 32,
			order = "c[pellet-tin]"
		},
		{
			type = "recipe",
			name = "durotal-ore-smelting",
			category = "blast-smelting",
			subgroup = "angels-durotal",
			energy_required = 4,
			ingredients =
			{
				{type = "item", name = "y-res1", amount = 24}
			},
			results =
			{
				{type = "item", name = "ingot-durotal", amount = 24}
			},
			icons =
			{
				{
					icon = "__grand-unified-factorio-theory__/graphics/items/ingot-durotal.png"
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_1.png",
					tint = angelsmods.smelting.number_tint,
					scale = 0.32,
					shift = {-12, -12}
				}
			},
			icon_size = 32,
			order = "d[ingot-durotal]-a"
		},
		{
			type = "recipe",
			name = "processed-durotal-smelting",
			category = "blast-smelting",
			subgroup = "angels-durotal",
			energy_required = 4,
			ingredients =
			{
				{type = "item", name = "processed-durotal", amount = 8},
				{type = "item", name = "solid-coke", amount = 2}
			},
			results =
			{
				{type = "item", name = "ingot-durotal", amount = 24}
			},
			icons =
			{
				{
					icon = "__grand-unified-factorio-theory__/graphics/items/ingot-durotal.png"
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_2.png",
					tint = angelsmods.smelting.number_tint,
					scale = 0.32,
					shift = {-12, -12}
				}
			},
			icon_size = 32,
			order = "d[ingot-durotal]-b"
		},
		{
			type = "recipe",
			name = "pellet-durotal-smelting",
			category = "blast-smelting",
			subgroup = "angels-durotal",
			energy_required = 4,
			ingredients =
			{
				{type = "item", name = "pellet-durotal", amount = 8},
				{type = "item", name = "solid-carbon", amount = 2}
			},
			results =
			{
				{type = "item", name = "ingot-durotal", amount = 24}
			},
			icons =
			{
				{
					icon = "__grand-unified-factorio-theory__/graphics/items/ingot-durotal.png"
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_3.png",
					tint = angelsmods.smelting.number_tint,
					scale = 0.32,
					shift = {-12, -12}
				}
			},
			icon_size = 32,
			order = "d[ingot-durotal]-c"
		},
		{
			type = "recipe",
			name = "molten-durotal-smelting",
			category = "induction-smelting",
			subgroup = "angels-durotal-casting",
			energy_required = 4,
			ingredients =
			{
				{type = "item", name = "ingot-durotal", amount = 12}
			},
			results =
			{
				{type = "fluid", name = "liquid-molten-durotal", amount = 120}
			},
			main_product = "liquid-molten-durotal",
			icon_size = 32,
			order = "f[liquid-molten-durotal]",
		},
		{
			type = "recipe",
			name = "angels-plate-durotal",
			category = "casting",
			subgroup = "angels-durotal-casting",
			normal =
			{
				energy_required = 4,
				ingredients =
				{
					{type = "fluid", name = "liquid-molten-durotal", amount = 40}
				},
				results =
				{
					{type = "item", name = "y-refined-yres1", amount = 4}
				}
			},
			icons =
			{
				{
					icon = "__Yuoki__/graphics/icons/n4pellets_icon.png"
				},
				{
					icon = "__grand-unified-factorio-theory__/graphics/items/molten-durotal.png",
					scale = 0.4375,
					shift = {-10, -10}
				}
			},
			icon_size = 32,
			order = "i[angels-plate-durotal]-a"
		},
		{
			type = "recipe",
			name = "angels-refined-durotal",
			category = "casting",
			subgroup = "angels-durotal-casting",
			normal =
			{
				energy_required = 4,
				ingredients =
				{
					{type = "fluid", name = "liquid-molten-durotal", amount = 40}
				},
				results =
				{
					{type = "item", name = "y-unicomp-raw", amount = 2}
				}
			},
			icons = {
				{
					icon = "__Yuoki__/graphics/icons/uni-komp-n4-icon.png"
				},
				{
					icon = "__grand-unified-factorio-theory__/graphics/items/molten-durotal.png",
					scale = 0.4375,
					shift = {-10, -10}
				}
			},
			icon_size = 32,
			order = "i[angels-refined-durotal]-b"
		},
	})
end