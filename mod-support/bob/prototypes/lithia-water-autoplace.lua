require("resource-autoplace")

if data.raw["resource"]["lithia-water"] then
	data:extend(
	{
		{
			type = "autoplace-control",
			name = "lithia-water",
			richness = true,
			order = "b-l",
			category = "resource",
		},
	})

	data.raw["resource"]["lithia-water"].autoplace =
	resource_autoplace.resource_autoplace_settings(
	{
		name = "lithia-water",
		order = "c",
		base_density = 8.2,
		base_spots_per_km2 = 1.8,
		random_probability = 1/48,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 1,
		additional_richness = 220000,
		has_starting_area_placement = false,
		regular_rq_factor_multiplier = 1
	})
end