local resource_autoplace = require("resource-autoplace")

if settings.startup["guft-newores-angelsresource"].value and data.raw["item"]["fluorite-ore"] then
	data:extend(
	{
		{
			type = "autoplace-control",
			name = "fluorite-ore",
			richness = true,
			order = "t-f",
			category = "resource",
		},
		{
			type = "noise-layer",
			name = "fluorite-ore"
		},
		{
			type = "resource",
			name = "fluorite-ore",
			icon = "__angelsrefining__/graphics/icons/ore-fluorite.png",
			icon_size = 32,
			flags = {"placeable-neutral"},
			order="t-f",
			tree_removal_probability = 0.2,
			tree_removal_max_distance = 16 * 16,
			minable =
			{
				hardness = 1,
				mining_particle = "stone-particle",
				mining_time = 2,
				result = "fluorite-ore",
			},
			collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
			selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
			autoplace = resource_autoplace.resource_autoplace_settings
			{
				name = "fluorite-ore",
				order = "c",
				base_density = 2,
				has_starting_area_placement = false,
				regular_rq_factor_multiplier = 1,
			},
			stage_counts = {10000, 5200, 2600, 1800, 1200, 800, 400, 80},
			stages =
			{
				sheet =
				{
					filename = "__grand-unified-factorio-theory__/graphics/entities/fluorite-ore-lr.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					frame_count = 8,
					variation_count = 8,
					hr_version =
					{
						filename = "__grand-unified-factorio-theory__/graphics/entities/fluorite-ore-hr.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						frame_count = 8,
						variation_count = 8,
						scale = 0.5
					}
				}
			},
			stages_effect =
			{
				sheet =
				{
					filename = "__grand-unified-factorio-theory__/graphics/entities/fluorite-glow-lr.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					frame_count = 8,
					variation_count = 8,
					blend_mode = "additive",
					flags = {"light"},
					hr_version =
					{
						filename = "__grand-unified-factorio-theory__/graphics/entities/fluorite-glow-hr.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						frame_count = 8,
						variation_count = 8,
						scale = 0.5,
						blend_mode = "additive",
						flags = {"light"}
					}
				}
			},
			effect_animation_period = 5,
			effect_animation_period_deviation = 1,
			effect_darkness_multiplier = 3.6,
			min_effect_alpha = 0.2,
			max_effect_alpha = 0.3,
			map_color = {r=0.5, g=0.7, b=0}
		},
	})
end