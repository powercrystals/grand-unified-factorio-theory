local ores =
{
	["clowns-ore1"] = 
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["clowns-ore2"] = 
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["clowns-ore3"] = 
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["clowns-ore4"] = 
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["clowns-ore5"] = 
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["clowns-ore6"] = 
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["clowns-ore7"] = 
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["clowns-ore8"] = 
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["clowns-ore9"] = 
	{
		guft_tier = 3,
		guft_rarity = 5,
	},

	["clowns-resource1"] = 
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["clowns-resource2"] = 
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	-- these are defined in clown's data but aren't used as of this writing, so we're just going to assume they behave like the others
	["clowns-resource3"] =
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["clowns-resource4"] =
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["clowns-resource5"] =
	{
		guft_tier = 3,
		guft_rarity = 5,
	},
	["clowns-resource6"] =
	{
		guft_tier = 3,
		guft_rarity = 5,
	},

	-- GUFT ores
	["magnesium-ore"] =
	{
		guft_tier = 4,
		guft_rarity = 5,
	},
	["osmium-ore"] =
	{
		guft_tier = 5,
		guft_rarity = 5,
	},
	["phosphorus-ore"] =
	{
		guft_tier = 3,
		guft_rarity = 5,
	}
}

if not settings.startup["guft-enableores-clown"].value then
	ores["clowns-ore1"].guft_enabled = false
	ores["clowns-ore2"].guft_enabled = false
	ores["clowns-ore3"].guft_enabled = false
	ores["clowns-ore4"].guft_enabled = false
	ores["clowns-ore5"].guft_enabled = false
	ores["clowns-ore6"].guft_enabled = false
	ores["clowns-ore7"].guft_enabled = false
	ores["clowns-ore8"].guft_enabled = false
	ores["clowns-ore9"].guft_enabled = false
end

if not settings.startup["guft-enableores-clownresource"].value then
	ores["clowns-resource1"].guft_enabled = false
	ores["clowns-resource2"].guft_enabled = false
	ores["clowns-resource3"].guft_enabled = false
	ores["clowns-resource4"].guft_enabled = false
	ores["clowns-resource5"].guft_enabled = false
	ores["clowns-resource6"].guft_enabled = false
end

return ores