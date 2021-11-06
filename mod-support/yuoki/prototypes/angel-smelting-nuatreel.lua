if mods["angelssmelting"] and mods["Yuoki"] then
	data:extend(
	{
		{
			type = "recipe",
			name = "crushing-nuatreel",
			category = "ore-sorting",
			subgroup = "yuoki-crushing",
			energy_required = 1,
			ingredients =
			{
				{type="item", name="y-res2", amount=1},
			},
			results=
			{
				{type="item", name="y-crush-yres2", amount=2},
				{type = "item", name = "stone-crushed", amount = 1}
			},
			icon = "__Yuoki__/graphics/icons/dust-green.png",
			icon_size = 32,
			order = "c[nuatreel]",
		},
		{
			type = "recipe",
			name = "nuatreel-ore-processing",
			category = "ore-processing",
			subgroup = "angels-nuatreel",
			energy_required = 2,
			ingredients =
			{
				{type = "item", name = "y-res2", amount = 4}
			},
			results = {
				{type = "item", name = "processed-nuatreel", amount = 2}
			},
			icon_size = 32,
			order = "b[processed-nuatreel]",
		},
		{
			type = "recipe",
			name = "nuatreel-processed-processing",
			category = "pellet-pressing",
			subgroup = "angels-nuatreel",
			energy_required = 2,
			ingredients =
			{
				{type = "item", name = "processed-nuatreel", amount = 3}
			},
			results =
			{
				{type = "item", name = "pellet-nuatreel", amount = 4}
			},
			icon_size = 32,
			order = "c[pellet-tin]"
		},
		{
			type = "recipe",
			name = "nuatreel-ore-smelting",
			category = "blast-smelting",
			subgroup = "angels-nuatreel",
			energy_required = 4,
			ingredients =
			{
				{type = "item", name = "y-res2", amount = 24}
			},
			results =
			{
				{type = "item", name = "ingot-nuatreel", amount = 24}
			},
			icons =
			{
				{
					icon = "__grand-unified-factorio-theory__/graphics/items/ingot-nuatreel.png"
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_1.png",
					tint = angelsmods.smelting.number_tint,
					scale = 0.32,
					shift = {-12, -12}
				}
			},
			icon_size = 32,
			order = "d[ingot-nuatreel]-a"
		},
		{
			type = "recipe",
			name = "processed-nuatreel-smelting",
			category = "blast-smelting",
			subgroup = "angels-nuatreel",
			energy_required = 4,
			ingredients =
			{
				{type = "item", name = "processed-nuatreel", amount = 8},
				{type = "item", name = "solid-coke", amount = 2}
			},
			results =
			{
				{type = "item", name = "ingot-nuatreel", amount = 24}
			},
			icons =
			{
				{
					icon = "__grand-unified-factorio-theory__/graphics/items/ingot-nuatreel.png"
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_2.png",
					tint = angelsmods.smelting.number_tint,
					scale = 0.32,
					shift = {-12, -12}
				}
			},
			icon_size = 32,
			order = "d[ingot-nuatreel]-b"
		},
		{
			type = "recipe",
			name = "pellet-nuatreel-smelting",
			category = "blast-smelting",
			subgroup = "angels-nuatreel",
			energy_required = 4,
			ingredients =
			{
				{type = "item", name = "pellet-nuatreel", amount = 8},
				{type = "item", name = "solid-carbon", amount = 2}
			},
			results =
			{
				{type = "item", name = "ingot-nuatreel", amount = 24}
			},
			icons =
			{
				{
					icon = "__grand-unified-factorio-theory__/graphics/items/ingot-nuatreel.png"
				},
				{
					icon = "__angelsrefining__/graphics/icons/num_3.png",
					tint = angelsmods.smelting.number_tint,
					scale = 0.32,
					shift = {-12, -12}
				}
			},
			icon_size = 32,
			order = "d[ingot-nuatreel]-c"
		},
		{
			type = "recipe",
			name = "molten-nuatreel-smelting",
			category = "induction-smelting",
			subgroup = "angels-nuatreel-casting",
			energy_required = 4,
			ingredients =
			{
				{type = "item", name = "ingot-nuatreel", amount = 12}
			},
			results =
			{
				{type = "fluid", name = "liquid-molten-nuatreel", amount = 120}
			},
			main_product = "liquid-molten-nuatreel",
			icon_size = 32,
			order = "f[liquid-molten-nuatreel]",
		},
		{
			type = "recipe",
			name = "angels-plate-nuatreel",
			category = "casting",
			subgroup = "angels-nuatreel-casting",
			hidden_from_player_crafting = true,
			normal =
			{
				energy_required = 4,
				ingredients =
				{
					{type = "fluid", name = "liquid-molten-nuatreel", amount = 40}
				},
				results =
				{
					{type = "item", name = "y-refined-yres2", amount = 4}
				}
			},
			icons =
			{
				{
					icon = "__Yuoki__/graphics/icons/f7pellets_icon.png"
				},
				{
					icon = "__grand-unified-factorio-theory__/graphics/items/molten-nuatreel.png",
					scale = 0.4375,
					shift = {-10, -10}
				}
			},
			icon_size = 32,
			order = "i[angels-plate-nuatreel]-a"
		},
		{
			type = "recipe",
			name = "angels-refined-nuatreel",
			category = "casting",
			subgroup = "angels-nuatreel-casting",
			normal =
			{
				energy_required = 4,
				ingredients =
				{
					{type = "fluid", name = "liquid-molten-nuatreel", amount = 40}
				},
				results =
				{
					{type = "item", name = "y-raw-fuelnium", amount = 2}
				}
			},
			icons =
			{
				{
					icon = "__Yuoki__/graphics/icons/crystal_energy.png"
				},
				{
					icon = "__grand-unified-factorio-theory__/graphics/items/molten-nuatreel.png",
					scale = 0.4375,
					shift = {-10, -10}
				}
			},
			icon_size = 32,
			order = "i[angels-refined-nuatreel]-b"
		},
	})
end