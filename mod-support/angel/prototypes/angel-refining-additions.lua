if mods["angelsrefining"] then
	data:extend({
		{
			type = "recipe",
			name = "mud-water-mud",
			category = "washing-plant",
			subgroup = "water-washing-filtering",
			energy_required = 5,
			ingredients =
			{
				{type = "fluid", name = "water-viscous-mud", amount = 200},
			},
			results=
			{
				{type="item", name="solid-mud", amount=10},
			},
			icon = "__angelsrefining__/graphics/icons/solid-mud.png",
			icon_size = 32,
			order = "m",
		},
	})
end