local resource_autoplace = require("resource-autoplace")

if settings.startup["guft-newores-angels"].value and mods["angelsrefining"] then
	data:extend(
	{
		{
			type = "autoplace-control",
			name = "sand-ore",
			richness = true,
			order = "t-c",
			category = "resource",
		},
		{
			type = "noise-layer",
			name = "sand-ore"
		},
		{
			type = "resource",
			name = "sand-ore",
			icon = "__angelsrefining__/graphics/icons/solid-sand.png",
			icon_size = 32,
			flags = {"placeable-neutral"},
			order="t-f",
			tree_removal_probability = 0.2,
			tree_removal_max_distance = 16 * 16,
			minable =
			{
				hardness = 1,
				mining_particle = "stone-particle",
				mining_time = 1,
				result = "solid-sand",
			},
			collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
			selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
			autoplace = resource_autoplace.resource_autoplace_settings
			{
				name = "sand-ore",
				order = "c",
				base_density = 4,
				has_starting_area_placement = false,
				regular_rq_factor_multiplier = 1,
			},
			stage_counts = {10000, 5200, 2600, 1800, 1200, 800, 400, 80},
			stages =
			{
				sheet =
				{
					filename = "__grand-unified-factorio-theory__/graphics/entities/earth-resource-lr.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					frame_count = 4,
					variation_count = 8,
					tint = {r=0.9, g=0.8, b=0.6},
					hr_version =
					{
						filename = "__grand-unified-factorio-theory__/graphics/entities/earth-resource-hr.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						frame_count = 4,
						variation_count = 8,
						tint = {r=0.9, g=0.7, b=0.6},
						scale = 0.5
					}
				}
			},
			map_color = {r=0.9, g=0.8, b=0.6},
		},
	})
end