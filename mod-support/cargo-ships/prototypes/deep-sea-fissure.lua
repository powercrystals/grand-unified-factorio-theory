if mods["cargo-ships"] and mods["angelspetrochem"] then
	local deep_fissure = table.deepcopy(data.raw["resource"]["deep_oil"])
	deep_fissure.name = "deep_fissure"
	deep_fissure.minable.results[1].name = "thermal-water"
	deep_fissure.stage_counts = {0}
	deep_fissure.stages =
	{
		sheet =
		{
			filename = "__angelsrefining__/graphics/entity/patches/fissure.png",
			tint = {r = 0.65, g = 0.4, b = 0.15},
			priority = "extra-high",
			width = 256,
			height = 256,
			frame_count = 4,
			variation_count = 1
		}
	}
	deep_fissure.stages_effect =
	{
		sheet =
		{
			filename = "__angelsrefining__/graphics/entity/patches/fissure-glow.png",
			tint = {r = 1, g = 0.3, b = 0.1},
			priority = "extra-high",
			width = 256,
			height = 256,
			frame_count = 4,
			variation_count = 1,
			blend_mode = "additive-soft",
			flags = {"light"}
		}
	}
	deep_fissure.effect_animation_period = 6
	deep_fissure.effect_animation_period_deviation = 1
	deep_fissure.effect_darkness_multiplier = 3
	deep_fissure.min_effect_alpha = 0.3
	deep_fissure.max_effect_alpha = 0.6
	deep_fissure.map_color = {r = 1, g = 0.5, b = 0},

	data:extend({deep_fissure})
end