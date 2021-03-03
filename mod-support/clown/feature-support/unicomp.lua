local featuredata =
{
	from = 
	{
		{ name = "magnesium-plate", type = "item", tier = 4 },
		{ name = "osmium-plate", type = "item", tier = 5 },
	},
	to =
	{
		{ name = "clowns-ore1", type = "item", tier = 3 },
		{ name = "clowns-ore2", type = "item", tier = 3 },
		{ name = "clowns-ore3", type = "item", tier = 3 },
		{ name = "clowns-ore4", type = "item", tier = 3 },
		{ name = "clowns-ore5", type = "item", tier = 3 },
		{ name = "clowns-ore6", type = "item", tier = 3 },
		{ name = "clowns-ore7", type = "item", tier = 3 },
		{ name = "clowns-ore8", type = "item", tier = 3 },
		{ name = "clowns-ore9", type = "item", tier = 3 },

		{ name = "clowns-resource1", type = "item", tier = 3 },
		{ name = "clowns-resource2", type = "item", tier = 3 },
	}
}

if not settings.startup["guft-enableores-angel"].value or not data.raw["item"]["angels-ore1"] then
	table.insert(featuredata.to, { name = "osmium-ore", type =  "item", tier =  5 })
	table.insert(featuredata.to, { name = "magnesium-ore", type =  "item", tier =  3 })
	table.insert(featuredata.to, { name = "phosphorus-ore", type =  "item", tier =  3 })
end

return featuredata