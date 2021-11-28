local featuredata =
{
	categories =
	{
		["basic-farming"] = 0.1,
		["temperate-farming"] = 0.1,
		["desert-farming"] = 0.1,
		["swamp-farming"] = 0.1,
		["advanced-temperate-farming"] = 0.1,
		["advanced-desert-farming"] = 0.1,
		["advanced-swamp-farming"] = 0.1,

		["bio-refugium-puffer"] = 0.2,
		["bio-refugium-fish"] = 0.2,
		["bio-refugium-hogger"] = 0.2,
		["bio-refugium-biter"] = 0.2,

		["angels-tree"] = 0.2,
		["angels-tree-temperate"] = 0.2,
		["angels-tree-desert"] = 0.2,
		["angels-tree-swamp"] = 0.2,

		["bio-hatchery"] = 0.2,
		["bio-butchery"] = 1/15,
		["bio-processor"] = 0.5,
		["bio-pressing"] = 0.25,
		["bio-processing"] = 0.5,
		["bio-processing-2"] = 0.5,
		["bio-processing-3"] = 0.5,
		["bio-processing-4"] = 0.5,

		["nutrient-extractor"] = 0.5,
		["angels-arboretum"] = 0.2,
	},
	recipes =
	{

	}
}

for _, recipe in pairs(data.raw["recipe"]) do
	if recipe.category == "seed-extractor" then -- seed extractor has some that are very slow and some that are very fast; skip the latter
		if (recipe.energy_required and recipe.energy_required > 5) or (recipe.normal and recipe.normal.energy_required and recipe.normal.energy_required > 5) then
			featuredata.recipes[recipe.name] = 0.05
		end
	end
end

return featuredata