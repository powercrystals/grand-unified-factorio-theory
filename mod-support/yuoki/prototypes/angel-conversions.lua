if mods["angelssmelting"] and mods["Yuoki"] then
	data:extend({
		{
			type = "recipe",
			name = "aslag-to-yslag",
			category = "blast-smelting",
			subgroup = "angels-slag",
			energy_required = 4,
			ingredients =
			{
				{type="item", name="slag", amount=24},
			},
			results=
			{
				{type="item", name="y-slag", amount=24},
			},
			icon = "__Yuoki__/graphics/icons/y-slag.png",
			icon_size = 32,
			order = "a",
		},
		{
			type = "recipe",
			name = "ymud-to-amud",
			category = "washing-plant",
			subgroup = "water-washing-filtering",
			energy_required = 4,
			ingredients =
			{
				{type = "fluid", name = "water", amount = 1000},
				{type="item", name="y-c_mud", amount=10},
			},
			results=
			{
				{type = "fluid", name = "water-saline", amount = 400},
				{type="item", name="solid-mud", amount=10},
				{type="item", name="y-toxic-dust", amount=10},
			},
			icon = "__Yuoki__/graphics/icons/c_mud_icon.png",
			icon_size = 32,
			order = "y",
		},
		{
			type = "recipe",
			name = "cwater-void",
			category = "angels-water-void",
			subgroup = "angels-water-void",
			energy_required = 1,
			ingredients =
			{
				{type = "fluid", name = "y-con_water", amount = 400},
			},
			results=
			{
				{type = "item", name = "water-void", amount = 0},
			},
			icon = "__Yuoki__/graphics/icons/h2o_c2_icon.png",
			icon_size = 32,
			order = "y",
		},
		{
			type = "recipe",
			name = "ye_blood-void",
			category = "angels-water-void",
			subgroup = "angels-water-void",
			energy_required = 1,
			ingredients =
			{
				{type = "fluid", name = "ye_blood", amount = 400},
			},
			results=
			{
				{type = "item", name = "water-void", amount = 0},
			},
			icon = "__Yuoki__/graphics/icons/h2o_c2_icon.png",
			icon_size = 32,
			order = "y",
		},
		{
			type = "recipe",
			name = "ye_slurry-void",
			category = "angels-water-void",
			subgroup = "angels-water-void",
			energy_required = 1,
			ingredients =
			{
				{type = "fluid", name = "ye_slurry", amount = 400},
			},
			results=
			{
				{type = "item", name = "water-void", amount = 0},
			},
			icon = "__Yuoki__/graphics/icons/h2o_c2_icon.png",
			icon_size = 32,
			order = "y",
		},
		{
			type = "recipe",
			name = "reputation-void",
			category = "angels-chemical-void",
			subgroup = "angels-chemical-void",
			hidden = true,
			energy_required = 1,
			ingredients =
			{
				{type = "item", name = "y-fame", amount = 10},
			},
			results=
			{
				{type = "item", name = "chemical-void", amount = 0},
			},
			icon = "__Yuoki__/graphics/icons/fame-icon.png",
			icon_size = 32,
			order = "y",
		},
		{
			type = "recipe",
			name = "toxic-dust-void",
			category = "angels-chemical-void",
			subgroup = "angels-chemical-void",
			hidden = true,
			energy_required = 1,
			ingredients =
			{
				{type = "item", name = "y-toxic-dust", amount = 10},
			},
			results=
			{
				{type = "item", name = "chemical-void", amount = 0},
			},
			icon = "__Yuoki__/graphics/icons/fame-icon.png",
			icon_size = 32,
			order = "y",
		},
		{
			type = "recipe",
			name = "frumital-from-compost",
			category = "chemistry",
			subgroup = "liquifying",
			energy_required = 1,
			ingredients =
			{
				{type = "item", name = "solid-compost", amount = 10},
			},
			results=
			{
				{type = "fluid", name = "y_syngas_raw", amount = 20},
			},
			icon = "__Yuoki__/graphics/icons/obs/h2o_c_icon.png",
			icon_size = 32,
			order = "y",
		},
		{
			type = "recipe",
			name = "angels-stone-flour",
			category = "ore-sorting",
			subgroup = "yuoki-crushing",
			energy_required = 1,
			ingredients =
			{
				{type = "item", name = "stone-brick" , amount = 1},
			},
			results =
			{
				{type = "item", name = "y_steinmehl", amount = 8},
			},
			main_product = "y_steinmehl",
			icon = "__Yuoki__/graphics/icons/stone-dust.png",
			icon_size = "32",
			order = "y",
		},
	})
end

if mods["angelspetrochem"] and mods["Yuoki"] then
	data:extend(
	{
		{
			type = "recipe",
			name = "durotal-dust-acidification",
			category = "liquifying",
			energy_required = 10,
			ingredients =
			{
				{type = "item", name = "y-crush-yres1", amount = 10},
				{type = "fluid", name = "water-purified", amount = 80}
			},
			results =
			{
				{type = "fluid", name = "water-green-waste", amount = 100},
			},
			subgroup = "petrochem-carbon-gas-feed",
			icon = data.raw.fluid["water-green-waste"].icon,
			icon_size = 32,
			order = "y-d",
		},
		{
			type = "recipe",
			name = "nuatreel-dust-acidification",
			category = "liquifying",
			energy_required = 10,
			ingredients =
			{
				{type = "item", name = "y-crush-yres2", amount = 10},
				{type = "fluid", name = "water-purified", amount = 80}
			},
			results =
			{
				{type = "fluid", name = "water-greenyellow-waste", amount = 100},
			},
			subgroup = "petrochem-carbon-gas-feed",
			icon = data.raw.fluid["water-greenyellow-waste"].icon,
			icon_size = 32,
			order = "y-n",
		},
		{
			type = "recipe",
			name = "rich-dust-acidification",
			category = "liquifying",
			energy_required = 10,
			ingredients =
			{
				{type = "item", name = "y-richdust", amount = 10},
				{type = "fluid", name = "water-purified", amount = 80}
			},
			results =
			{
				{type = "fluid", name = "water-red-waste", amount = 100},
			},
			subgroup = "petrochem-carbon-gas-feed",
			icon = data.raw.fluid["water-red-waste"].icon,
			icon_size = 32,
			order = "y-r",
		},
	})
end