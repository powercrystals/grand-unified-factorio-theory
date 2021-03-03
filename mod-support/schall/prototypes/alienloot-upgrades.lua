if data.raw.item["alien-ore-1"] and data.raw.item["catalysator-brown"] then
	data:extend({
		{
			type = "recipe",
			name = "alienloot-1-to-2",
			category = "advanced-crafting",
			energy_required = 5,
			ingredients =
			{
				{type="item", name="alien-ore-1", amount=10},
				{type="item", name="catalysator-brown", amount=1},
			},
			results=
			{
				{type="item", name="alien-ore-2", amount=1},
			},
			icons =
			{
				{
					icon = "__SchallAlienLoot__/graphics/icons/alien-ore-2.png",
				},
			},
			icon_size = 64,
			order = "z-a-1",
		},
		{
			type = "recipe",
			name = "alienloot-2-to-3",
			category = "advanced-crafting",
			energy_required = 5,
			ingredients =
			{
				{type="item", name="alien-ore-2", amount=10},
				{type="item", name="catalysator-green", amount=1},
			},
			results=
			{
				{type="item", name="alien-ore-3", amount=1},
			},
			icons =
			{
				{
					icon = "__SchallAlienLoot__/graphics/icons/alien-ore-3.png",
				},
			},
			icon_size = 64,
			order = "z-a-2",
		},
		{
			type = "recipe",
			name = "alienloot-3-to-artifact",
			category = "advanced-crafting",
			energy_required = 5,
			ingredients =
			{
				{type="item", name="alien-ore-3", amount=10},
				{type="item", name="catalysator-orange", amount=1},
			},
			results=
			{
				{type="item", name="alien-artifact", amount=1},
			},
			icons =
			{
				{
					icon = "__SchallAlienLoot__/graphics/icons/alien-artifact.png",
				},
			},
			icon_size = 64,
			order = "z-a-3",
		},
	})
end