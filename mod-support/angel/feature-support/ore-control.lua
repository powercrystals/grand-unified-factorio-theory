local ores =
{
	["angels-ore1"] =
	{
		guft_tier = 1,
		guft_rarity = 1,
	},
	["angels-ore2"] =
	{
		guft_tier = 2,
		guft_rarity = 3,
	},
	["angels-ore3"] =
	{
		guft_tier = 1,
		guft_rarity = 1,
	},
	["angels-ore4"] =
	{
		guft_tier = 2,
		guft_rarity = 3,
	},
	["angels-ore5"] =
	{
		guft_tier = 2,
		guft_rarity = 2,
	},
	["angels-ore6"] =
	{
		guft_tier = 2,
		guft_rarity = 2,
	},

	["angels-natural-gas"] =
	{
		guft_tier = 3,
		guft_rarity = 3,

		base_spots_per_km2 = 1.8,
		random_probability = 1 / 48,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 1,
		additional_richness = 10000,
		richness_post_multiplier = 0.03
	},
	["angels-fissure"] =
	{
		guft_tier = 4,
		guft_rarity = 3,

		base_spots_per_km2 = 1.8,
		random_probability = 1 / 48,
		random_spot_size_minimum = 1,
		random_spot_size_maximum = 1,
		additional_richness = 10000,
		richness_post_multiplier = 0.03
	},
	
	-- GUFT ores
	["chrome-ore"] =
	{
		guft_tier = 4,
		guft_rarity = 5,
	},
	["clay-ore"] =
	{
		guft_tier = 2,
		guft_rarity = 3,
	},
	["fluorite-ore"] =
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["limestone-ore"] =
	{
		guft_tier = 2,
		guft_rarity = 3,
	},
	["manganese-ore"] =
	{
		guft_tier = 4,
		guft_rarity = 5,
	},
	["platinum-ore"] =
	{
		guft_tier = 5,
		guft_rarity = 5,
	},
	["salt-ore"] =
	{
		guft_tier = 3,
		guft_rarity = 4,
	},
	["sand-ore"] =
	{
		guft_tier = 2,
		guft_rarity = 3,
	},
	["soil-ore"] =
	{
		guft_tier = 2,
		guft_rarity = 3,
	},
}

if not settings.startup["guft-enableores-angel"].value then
	ores["angels-ore1"].guft_enabled = false
	ores["angels-ore2"].guft_enabled = false
	ores["angels-ore3"].guft_enabled = false
	ores["angels-ore4"].guft_enabled = false
	ores["angels-ore5"].guft_enabled = false
	ores["angels-ore6"].guft_enabled = false
end

if not settings.startup["guft-enableores-angelresource"].value then
	ores["angels-natural-gas"].guft_enabled = false
	ores["angels-fissure"].guft_enabled = false
end

if settings.startup["guft-enableores-angel"].value and (not settings.startup["guft-enableores-base-preset"].value ~= "angel" or not settings.startup["guft-enableores-bob"].value) then
	ores["angels-ore1"].guft_start = true
	ores["angels-ore3"].guft_start = true
	ores["angels-ore5"].guft_start = true
	ores["angels-ore6"].guft_start = true
end

if settings.startup["guft-enableores-angel"].value and settings.startup["guft-enableores-bob"].value then
	ores["angels-ore1"].guft_rarity = ores["angels-ore1"].guft_rarity + 1
	ores["angels-ore2"].guft_rarity = ores["angels-ore2"].guft_rarity + 1
	ores["angels-ore3"].guft_rarity = ores["angels-ore3"].guft_rarity + 1
	ores["angels-ore4"].guft_rarity = ores["angels-ore4"].guft_rarity + 1
	ores["angels-ore5"].guft_rarity = ores["angels-ore5"].guft_rarity + 1
	ores["angels-ore6"].guft_rarity = ores["angels-ore6"].guft_rarity + 1
end

return ores