if mods["angelspetrochem"] then
	data:extend(
	{
		{
			type = "recipe",
			name = "water-pollution",
			category = "liquifying",
			energy_required = 10,
			ingredients =
			{
				{type = "item", name = "solid-sodium-hydroxide", amount = 10},
				{type = "fluid", name = "water-purified", amount = 90}
			},
			results =
			{
				{type = "fluid", name = "water", amount = 100},
			},
			subgroup = "petrochem-carbon-gas-feed",
			icon = "__base__/graphics/icons/fluid/water.png",
			icon_size = 64,
			order = "z",
		},
	})
end