local ores =
{
	["y-res1"] =
	{
		guft_tier = 1,
		guft_rarity = 3,
	},
	["y-res2"] =
	{
		guft_tier = 1,
		guft_rarity = 3,
	}
}

if not settings.startup["guft-enableores-yuoki"].value then
	ores["y-res1"].guft_enabled = false
	ores["y-res2"].guft_enabled = false
end

if settings.startup["guft-enableores-angel"].value then
	ores["y-res1"].guft_tier = 2
	ores["y-res1"].guft_rarity = 3

	ores["y-res2"].guft_tier = 2
	ores["y-res2"].guft_rarity = 3
end

if settings.startup["guft-feature-ore-control-start-yuoki"].value then
	ores["y-res1"].guft_start = true
	ores["y-res2"].guft_start = true
end

return ores