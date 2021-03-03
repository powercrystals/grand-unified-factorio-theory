-- ore sorting output scaling
for name, recipe in pairs(data.raw["recipe"]) do
	if recipe.category == "ore-sorting" then
		if recipe.results then
			for _, result in pairs(recipe.results) do
				result.amount = result.amount * settings.startup["guft-balance-angel-ore-sort-multiplier"].value
			end
		end

		if recipe.normal and recipe.normal.results then
			for _, result in pairs(recipe.normal.results) do
				result.amount = result.amount * settings.startup["guft-balance-angel-ore-sort-multiplier"].value
			end
		end

		if recipe.expensive and recipe.expensive.results then
			for _, result in pairs(recipe.expensive.results) do
				result.amount = result.amount * settings.startup["guft-balance-angel-ore-sort-multiplier"].value
			end
		end
	end
end