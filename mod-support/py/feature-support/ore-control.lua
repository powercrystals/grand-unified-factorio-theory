local ores =
{
	["ore-aluminium"] =
	{
		guft_tier = 3,
		guft_rarity = 3,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
		candidate_spot_count = 20
	},
	["ore-bioreserve"] =
	{
		guft_tier = 2,
		guft_rarity = 4,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
		candidate_spot_count = 20
	},
	["borax"] =
	{
		guft_tier = 2,
		guft_rarity = 3,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
		candidate_spot_count = 20
	},
	["ore-chromium"] =
	{
		guft_tier = 3,
		guft_rarity = 3,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
		candidate_spot_count = 20
	},
	["ore-lead"] =
	{
		guft_tier = 1,
		guft_rarity = 2,
		guft_start = true,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
		candidate_spot_count = 20
	},
	["molybdenum-ore"] =
	{
		guft_tier = 3,
		guft_rarity = 4,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
		candidate_spot_count = 20
	},
	["ore-nickel"] =
	{
		guft_tier = 3,
		guft_rarity = 3,

		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
		candidate_spot_count = 20
	},
	["niobium"] =
	{
		guft_tier = 3,
		guft_rarity = 3,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
		candidate_spot_count = 20
	},
	["ore-quartz"] =
	{
		guft_tier = 1,
		guft_rarity = 2,
		guft_start = true,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
		candidate_spot_count = 20
	},
	["rare-earth-bolide"] =
	{
		guft_tier = 4,
		guft_rarity = 4,

		base_spots_per_km2 = 1.25,
		random_probability = 1/192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["raw-coal"] =
	{
		guft_tier = 1,
		guft_rarity = 1,
		guft_start = true,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
		additional_richness = 10000,
		candidate_spot_count = 20
	},
	["regolites"] =
	{
		guft_tier = 3,
		guft_rarity = 4,

		base_spots_per_km2 = 1.25,
		random_probability = 1/192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["sulfur-patch"] =
	{
		guft_tier = 2,
		guft_rarity = 2,

		base_spots_per_km2 = 1.25,
		random_probability = 1/192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["ore-tin"] =
	{
		guft_tier = 2,
		guft_rarity = 3,
		guft_start = true,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
		candidate_spot_count = 20
	},
	["ore-titanium"] =
	{
		guft_tier = 3,
		guft_rarity = 4,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
		candidate_spot_count = 20
	},
	["ore-zinc"] =
	{
		guft_tier = 3,
		guft_rarity = 3,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
		candidate_spot_count = 20
	},

	["aluminium-rock"] =
	{
		guft_tier = 4,
		guft_rarity = 5,

		base_spots_per_km2 = 1.25,
		random_probability = 1/192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["chromium-rock"] =
	{
		guft_tier = 3,
		guft_rarity = 3,

		base_spots_per_km2 = 1.25,
		random_probability = 1 / 192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["coal-rock"] =
	{
		guft_tier = 2,
		guft_rarity = 4,

		base_spots_per_km2 = 1.25,
		random_probability = 1 / 192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["copper-rock"] =
	{
		guft_tier = 2,
		guft_rarity = 4,

		base_spots_per_km2 = 1.25,
		random_probability = 1 / 192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["iron-rock"] =
	{
		guft_tier = 2,
		guft_rarity = 4,

		base_spots_per_km2 = 1.25,
		random_probability = 1 / 192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["lead-rock"] =
	{
		guft_tier = 3,
		guft_rarity = 4,

		base_spots_per_km2 = 1.25,
		random_probability = 1 / 192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["nexelit-rock"] =
	{
		guft_tier = 4,
		guft_rarity = 5,

		base_spots_per_km2 = 1.25,
		random_probability = 1 / 192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["nickel-rock"] =
	{
		guft_tier = 4,
		guft_rarity = 5,

		base_spots_per_km2 = 1.25,
		random_probability = 1 / 192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["phosphate-rock"] =
	{
		guft_tier = 3,
		guft_rarity = 3,

		base_spots_per_km2 = 1.25,
		random_probability = 1/192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["phosphate-rock-02"] =
	{
		guft_tier = 3,
		guft_rarity = 3,

		base_spots_per_km2 = 1.25,
		random_probability = 1/192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["quartz-rock"] =
	{
		guft_tier = 3,
		guft_rarity = 4,

		base_spots_per_km2 = 1.25,
		random_probability = 1 / 192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["salt-rock"] =
	{
		guft_tier = 2,
		guft_rarity = 2,

		base_spots_per_km2 = 1.25,
		random_probability = 1 / 192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["tin-rock"] =
	{
		guft_tier = 3,
		guft_rarity = 4,

		base_spots_per_km2 = 1.25,
		random_probability = 1 / 192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["titanium-rock"] =
	{
		guft_tier = 4,
		guft_rarity = 5,

		base_spots_per_km2 = 1.25,
		random_probability = 1 / 192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["uranium-rock"] =
	{
		guft_tier = 4,
		guft_rarity = 5,

		base_spots_per_km2 = 1.25,
		random_probability = 1 / 192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},
	["zinc-rock"] =
	{
		guft_tier = 4,
		guft_rarity = 5,

		base_spots_per_km2 = 1.25,
		random_probability = 1 / 192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},

	["bitumen-seep"] =
	{
		guft_tier = 2,
		guft_rarity = 2,

		base_spots_per_km2 = 1.8,
		random_probability = 1/192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 1,
	},

	["volcanic-pipe"] =
	{
		guft_tier = 4,
		guft_rarity = 4,

		base_spots_per_km2 = 1.25,
		random_probability = 1/192,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 2,
		additional_richness = 10000,
	},

	["oil-sand"] =
	{
		guft_tier = 2,
		guft_rarity = 4,
	},

	-- the following are no longer spawned by py as of some relatively recent version, so they just start disabled
	["tar-patch"] =
	{
		guft_enabled = false,
	},

	["oil-mk01"] =
	{
		guft_enabled = false,
	},
	["oil-mk02"] =
	{
		guft_enabled = false,
	},
	["oil-mk03"] =
	{
		guft_enabled = false,
	},
	["oil-mk04"] =
	{
		guft_enabled = false,
	},
}

if not settings.startup["guft-enableores-py"].value then
	ores["ore-aluminium"].guft_enabled = false
	ores["ore-bioreserve"].guft_enabled = false
	ores["borax"].guft_enabled = false
	ores["ore-chromium"].guft_enabled = false
	ores["ore-lead"].guft_enabled = false
	ores["molybdenum-ore"].guft_enabled = false
	ores["ore-nickel"].guft_enabled = false
	ores["nickel-rock"].guft_enabled = false
	ores["niobium"].guft_enabled = false
	ores["ore-quartz"].guft_enabled = false
	ores["rare-earth-bolide"].guft_enabled = false
	ores["raw-coal"].guft_enabled = false
	ores["regolites"].guft_enabled = false
	ores["sulfur-patch"].guft_enabled = false
	ores["ore-tin"].guft_enabled = false
	ores["ore-titanium"].guft_enabled = false
	ores["ore-zinc"].guft_enabled = false

	ores["aluminium-rock"].guft_enabled = false
	ores["chromium-rock"].guft_enabled = false
	ores["coal-rock"].guft_enabled = false
	ores["copper-rock"].guft_enabled = false
	ores["iron-rock"].guft_enabled = false
	ores["lead-rock"].guft_enabled = false
	ores["nexelit-rock"].guft_enabled = false
	ores["phosphate-rock"].guft_enabled = false
	ores["phosphate-rock-02"].guft_enabled = false
	ores["quartz-rock"].guft_enabled = false
	ores["salt-rock"].guft_enabled = false
	ores["tin-rock"].guft_enabled = false
	ores["titanium-rock"].guft_enabled = false
	ores["uranium-rock"].guft_enabled = false
	ores["zinc-rock"].guft_enabled = false

	ores["bitumen-seep"].guft_enabled = false

	ores["oil-sand"].guft_enabled = false
	ores["tar-patch"].guft_enabled = false

	ores["oil-mk01"].guft_enabled = false
	ores["oil-mk02"].guft_enabled = false
	ores["oil-mk03"].guft_enabled = false
	ores["oil-mk04"].guft_enabled = false

	ores["volcanic-pipe"].guft_enabled = false
end

return ores