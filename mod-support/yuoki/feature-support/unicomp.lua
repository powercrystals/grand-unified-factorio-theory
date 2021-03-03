local featuredata =
{
	from = 
	{
	},
	to =
	{
	}
}

if not settings.startup["guft-enableores-angel"].value or not data.raw["item"]["angels-ore1"] then
	table.insert(featuredata.to, { name = "y-res1", type = "item", tier = 2 })
	table.insert(featuredata.to, { name = "y-res2", type = "item", tier = 2 })
end

return featuredata