local ores =
{
	["bauxite-ore"] = 
	{
		guft_tier = 3,
		guft_rarity = 2,
	},
	["cobalt-ore"] = 
	{
		guft_tier = 3,
		guft_rarity = 4,
	},
	["gem-ore"] = 
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["gold-ore"] = 
	{
		guft_tier = 4,
		guft_rarity = 5,
	},
	["lead-ore"] = 
	{
		guft_tier = 1,
		guft_rarity = 2,
		guft_start = true,
	},
	["nickel-ore"] = 
	{
		guft_tier = 3,
		guft_rarity = 3,
	},
	["quartz"] = 
	{
		guft_tier = 1,
		guft_rarity = 2,
		guft_start = true,
	},
	["rutile-ore"] = 
	{
		guft_tier = 4,
		guft_rarity = 2,
	},
	["silver-ore"] = 
	{
		guft_tier = 4,
		guft_rarity = 5,
	},	
	["sulfur"] = 
	{
		guft_tier = 2,
		guft_rarity = 3,
	},
	["thorium-ore"] = 
	{
		guft_tier = 5,
		guft_rarity = 5,

		base_spots_per_km2 = 1.25,
		random_spot_size_minimum = 2,
		random_spot_size_maximum = 4,
	},
	["tin-ore"] = 
	{
		guft_tier = 1,
		guft_rarity = 2,
		guft_start = true,
	},
	["tungsten-ore"] = 
	{
		guft_tier = 5,
		guft_rarity = 3,
	},
	["zinc-ore"] = 
	{
		guft_tier = 3,
		guft_rarity = 4,
	},

	["ground-water"] = 
	{
		guft_tier = 2,
		guft_rarity = 4,

		base_spots_per_km2 = 1.8,
		random_probability = 1/48,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 1,
		additional_richness = 220000,
	},
	["lithia-water"] = 
	{
		guft_tier = 3,
		guft_rarity = 5,

		base_spots_per_km2 = 1.8,
		random_probability = 1/48,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 1,
		additional_richness = 220000,
	},
}

if not settings.startup["guft-enableores-bob"].value then
	ores["bauxite-ore"].guft_enabled = false
	ores["cobalt-ore"].guft_enabled = false
	ores["gem-ore"].guft_enabled = false
	ores["gold-ore"].guft_enabled = false
	ores["lead-ore"].guft_enabled = false
	ores["nickel-ore"].guft_enabled = false
	ores["quartz"].guft_enabled = false
	ores["rutile-ore"].guft_enabled = false
	ores["silver-ore"].guft_enabled = false
	ores["thorium-ore"].guft_enabled = false
	ores["tin-ore"].guft_enabled = false
	ores["tungsten-ore"].guft_enabled = false
	ores["zinc-ore"].guft_enabled = false
	
	ores["ground-water"].guft_enabled = false
	ores["lithia-water"].guft_enabled = false
end

if not settings.startup["guft-enableores-bobsulfur"].value then
	ores["sulfur"].guft_enabled = false
end

return ores