local featuredata =
{
	from = 
	{
		{ name = "iron-plate", type = "item", tier = 1 },
		{ name = "copper-plate", type = "item", tier = 1 },
		{ name = "stone-brick", type = "item", tier = 2 },
	},
	to =
	{
		{ name = "water", type = "fluid", tier = 1 }
	}
}

if not settings.startup["guft-enableores-angel"].value or not data.raw["item"]["angels-ore1"] then
	table.insert(featuredata.to, { name = "iron-ore", type = "item", tier = 1 })
	table.insert(featuredata.to, { name = "copper-ore", type = "item", tier = 1 })
	table.insert(featuredata.to, { name = "stone", type = "item", tier = 1 })
	table.insert(featuredata.to, { name = "coal", type = "item", tier = 1 })
	table.insert(featuredata.to, { name = "crude-oil", type = "item", tier = 3 })
	table.insert(featuredata.to, { name = "uranium", type = "item", tier = 4 })
end

if not mods["angelspetrochem"] then
	table.insert(featuredata.from, { name = "heavy-oil", type = "fluid", tier = 3 })
	table.insert(featuredata.from, { name = "light-oil", type = "fluid", tier = 3 })
	table.insert(featuredata.from, { name = "petroleum-gas", type = "fluid", tier = 3 })
end

return featuredata