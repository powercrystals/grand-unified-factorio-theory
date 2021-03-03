local featuredata =
{
	from = 
	{
		{ name = "liquid-naphtha", type = "fluid", tier = 3 },
		{ name = "liquid-mineral-oil", type = "fluid", tier = 3 },
		{ name = "liquid-fuel-oil", type = "fluid", tier = 3 },
		{ name = "liquid-nutrient-pulp", type = "fluid", tier = 3 },

		{ name = "angels-mono-silicon", type = "item", tier = 1 },
		{ name = "chrome-plate", type = "item", tier = 4 },
	},
	to =
	{
		{ name = "angels-ore1", type = "item", tier = 1 },
		{ name = "angels-ore2", type = "item", tier = 2 },
		{ name = "angels-ore3", type = "item", tier = 1 },
		{ name = "angels-ore4", type = "item", tier = 2 },
		{ name = "angels-ore5", type = "item", tier = 1 },
		{ name = "angels-ore6", type = "item", tier = 1 },

		{ name = "liquid-multi-phase-oil", type = "fluid", tier = 3 },
		{ name = "gas-natural-1", type = "fluid", tier = 3 },
	}
}

if not settings.startup["guft-enableores-angel"].value or not data.raw["item"]["angels-ore1"] then
	table.insert(featuredata.to, { name = "chrome-ore", type =  "item", tier =  3 })
	table.insert(featuredata.to, { name = "manganese-ore", type =  "item", tier =  3 })
	table.insert(featuredata.to, { name = "platinum-ore", type =  "item", tier =  4 })
end

return featuredata