local resource_autoplace = require("resource-autoplace")

if settings.startup["guft-newores-248k"].value and mods["248k"] then
	data:extend(
	{
		{
			type = "autoplace-control",
			name = "lithium-ore",
			richness = true,
			order = "t-c",
			category = "resource",
		},
		{
			type = "noise-layer",
			name = "lithium-ore"
		},
	})

	local lithium =
	{
		type = "resource",
		name = "lithium-ore",
		icon = "__248k__/ressources/electronic/el_lithium/el_lithium_ore_item.png",
		icon_size = 64,
		flags = {"placeable-neutral"},
		order="t-f",
		tree_removal_probability = 0.2,
		tree_removal_max_distance = 16 * 16,
		minable =
		{
			hardness = 1,
			mining_particle = "stone-particle",
			mining_time = 1,
			result = "el_lithium_ore_item",
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace = resource_autoplace.resource_autoplace_settings
		{
			name = "lithium-ore",
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
				filename = "__grand-unified-factorio-theory__/graphics/entities/lithium-lr.png",
				priority = "extra-high",
				width = 64,
				height = 64,
				frame_count = 8,
				variation_count = 8,
				hr_version =
				{
					filename = "__grand-unified-factorio-theory__/graphics/entities/lithium-hr.png",
					priority = "extra-high",
					width = 128,
					height = 128,
					frame_count = 8,
					variation_count = 8,
					scale = 0.5
				}
			}
		},
		map_color = {r=0.7, g=1, b=0.95}
	}

	if mods["angelsrefining"] then -- we can use a nicer sprite sheet if angel's refining is present; plus it'll add to variety
		lithium.stages.sheet.filename = "__angelsrefining__/graphics/entity/ores/ore-18-lr.png"
		lithium.stages.sheet.tint = {r=0.7, g=1, b=0.95}
		lithium.stages.sheet.hr_version.filename = "__angelsrefining__/graphics/entity/ores/ore-18-hr.png"
		lithium.stages.sheet.hr_version.tint = {r=0.7, g=1, b=0.95}
	end

	data:extend({ lithium })
end