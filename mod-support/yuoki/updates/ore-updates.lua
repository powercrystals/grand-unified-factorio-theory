local resource_autoplace = require("resource-autoplace")

if data.raw["resource"]["y-res1"] then
	data.raw["resource"]["y-res1"].autoplace = resource_autoplace.resource_autoplace_settings
		{
			name = "y-res1",
			order = "c",
			base_density = 4,
			has_starting_area_placement = true,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1
		}
	data.raw["resource"]["y-res2"].autoplace = resource_autoplace.resource_autoplace_settings
		{
			name = "y-res2",
			order = "c",
			base_density = 4,
			has_starting_area_placement = true,
			regular_rq_factor_multiplier = 1,
			starting_rq_factor_multiplier = 1
		}
end