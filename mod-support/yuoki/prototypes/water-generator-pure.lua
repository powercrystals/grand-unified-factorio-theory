if data.raw["assembling-machine"]["y-water-gen"] and data.raw["fluid"]["water-purified"] then
	data:extend(
	{
		{
			type = "recipe",
			name = "y-water-gen-pure-recipe",
			category = "yuoki-watergen-recipe",		
			energy_required = 2,
			ingredients = {},
			results={{type="fluid", name="water-purified", amount=100, },},
			group = "yuoki",
			subgroup = "y-fluid",
			enabled = "true",
			order = "c-f",
		},
	})
end