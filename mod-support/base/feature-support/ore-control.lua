local ores =
{
	["iron-ore"] =
	{
		guft_tier = 1,
		guft_rarity = 1,

		candidate_spot_count = 22,
	},
	["copper-ore"] =
	{
		guft_tier = 1,
		guft_rarity = 2,

		candidate_spot_count = 22
	},
	["coal"] =
	{
		guft_tier = 1,
		guft_rarity = 1,
	},
	["stone"] =
	{
		guft_tier = 1,
		guft_rarity = 3,
	},
	["uranium-ore"] =
	{
		guft_tier = 4,
		guft_rarity = 4,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
	},
	["crude-oil"] =
	{
		guft_tier = 3,
		guft_rarity = 3,

		base_spots_per_km2 = 1.8,
		random_probability = 1/48,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 1,
		additional_richness = 220000,
	}
}

if settings.startup["guft-enableores-base-preset"].value == "angel" then
	ores["iron-ore"].guft_enabled = false
	ores["copper-ore"].guft_enabled = false
end

if settings.startup["guft-enableores-base-preset"].value == "py" then
	ores["uranium-ore"].guft_enabled = false
	ores["crude-oil"].guft_enabled = false
	ores["coal"].guft_enabled = false
end

if not settings.startup["guft-enableores-base"].value then
	ores["coal"].guft_enabled = false
	ores["stone"].guft_enabled = false
	ores["iron-ore"].guft_enabled = false
	ores["copper-ore"].guft_enabled = false
	ores["uranium-ore"].guft_enabled = false
	ores["crude-oil"].guft_enabled = false
end

if settings.startup["guft-feature-ore-control-start-base-coal"].value then
	ores["coal"].guft_start = true
end

if settings.startup["guft-feature-ore-control-start-base-stone"].value then
	ores["stone"].guft_start = true
end

if settings.startup["guft-feature-ore-control-start-base-metals"].value then
	ores["iron-ore"].guft_start = true
	ores["copper-ore"].guft_start = true
end

return ores