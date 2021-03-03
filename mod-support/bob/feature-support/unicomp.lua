local featuredata =
{
	from = 
	{
		{ name = "lead-plate", type = "item", tier = 1 },
		{ name = "tin-plate", type = "item", tier = 1 },
		{ name = "aluminium-plate", type = "item", tier = 2 },
		{ name = "zinc-plate", type = "item", tier = 2 },
		{ name = "cobalt-plate", type = "item", tier = 2 },
		{ name = "nickel-plate", type = "item", tier = 3 },
		{ name = "silver-plate", type = "item", tier = 3 },
		{ name = "lithium", type = "item", tier = 3 },
		{ name = "gold-plate", type = "item", tier = 4 },
		{ name = "titanium-plate", type = "item", tier = 4 },
		{ name = "tungsten-plate", type = "item", tier = 5 },
	},
	to =
	{
	}
}

if data.raw["item"]["angels-mono-silicon"] then
	table.insert(featuredata.from, { name = "silicon-plate", type = "item", tier = 1 })
end

if not settings.startup["guft-enableores-angel"].value or not data.raw["item"]["angels-ore1"] then
	table.insert(featuredata.to, { name = "lead-ore", type =  "item", tier =  1 })
	table.insert(featuredata.to, { name = "tin-ore", type =  "item", tier =  1 })
	table.insert(featuredata.to, { name = "quartz", type =  "item", tier =  1 })
	table.insert(featuredata.to, { name = "aluminium-ore", type =  "item", tier =  2 })
	table.insert(featuredata.to, { name = "zinc-ore", type =  "item", tier =  2 })
	table.insert(featuredata.to, { name = "cobalt-ore", type =  "item", tier =  2 })
	table.insert(featuredata.to, { name = "nickel-ore", type =  "item", tier =  3 })
	table.insert(featuredata.to, { name = "silver-ore", type =  "item", tier =  3 })
	table.insert(featuredata.to, { name = "gold-ore", type =  "item", tier =  4 })
	table.insert(featuredata.to, { name = "rutile-ore", type =  "item", tier =  4 })
	table.insert(featuredata.to, { name = "tungsten-ore", type =  "item", tier =  5 })
end

return featuredata