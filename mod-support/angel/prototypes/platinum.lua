local resource_autoplace = require("resource-autoplace")

if settings.startup["guft-newores-angels"].value and mods["angelssmelting"] then
	data:extend(
	{
		{
			type = "autoplace-control",
			name = "platinum-ore",
			richness = true,
			order = "t-c",
			category = "resource",
		},
		{
			type = "noise-layer",
			name = "platinum-ore"
		},
		{
			type = "resource",
			name = "platinum-ore",
			icon = "__angelssmelting__/graphics/icons/ore-platinum.png",
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
				result = "platinum-ore",
			},
			collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
			selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
			autoplace = resource_autoplace.resource_autoplace_settings
			{
				name = "platinum-ore",
				order = "c",
				base_density = 1,
				has_starting_area_placement = false,
				regular_rq_factor_multiplier = 0.5,
			},
			stage_counts = {10000, 5200, 2600, 1800, 1200, 800, 400, 80},
			stages =
			{
				sheet =
				{
					filename = "__angelsrefining__/graphics/entity/ores/ore-22-lr.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					frame_count = 8,
					variation_count = 8,
					tint = {r=0.97, g=0.85, b=0.7},
					hr_version =
					{
						filename = "__angelsrefining__/graphics/entity/ores/ore-22-hr.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						frame_count = 8,
						variation_count = 8,
						tint = {r=0.97, g=0.85, b=0.7},
						scale = 0.5
					}
				}
			},
			map_color = {r=0.97, g=0.94, b=0.9}
		},
	})
end