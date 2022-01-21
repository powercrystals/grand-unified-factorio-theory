local ores =
{
	["omnite"] =
	{
		guft_tier = 1,
		guft_rarity = 1,
	},
	["infinite-omnite"] =
	{
		guft_tier = 1,
		guft_rarity = 5,
	}
}

if not settings.startup["guft-enableores-omni"].value then
	ores["omnite"].guft_enabled = false
	ores["infinite-omnite"].guft_enabled = false
end

if settings.startup["guft-enableores-base"].value then
	ores["omnite"].guft_rarity = ores["omnite"].guft_rarity + 1
end

if settings.startup["guft-enableores-angel"].value and mods["angelsrefining"] then
	ores["omnite"].guft_rarity = ores["omnite"].guft_rarity + 1
end

if settings.startup["guft-enableores-bob"].value and mods["bobores"] then
	ores["omnite"].guft_rarity = ores["omnite"].guft_rarity + 2
end

if not settings.startup["guft-enableores-base"].value and not settings.startup["guft-enableores-bob"].value and not settings.startup["guft-enableores-angel"].value then
	ores["omnite"].guft_start = true
end

return ores