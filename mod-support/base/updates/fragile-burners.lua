if settings.startup["guft-misc-fragile-burners"] then
	data.raw["mining-drill"]["burner-mining-drill"].minable.result = nil
	data.raw["mining-drill"]["burner-mining-drill"].minable.results = data.raw["recipe"]["burner-mining-drill"].normal and data.raw["recipe"]["burner-mining-drill"].normal.ingredients or data.raw["recipe"]["burner-mining-drill"].ingredients
		
	data.raw["inserter"]["burner-inserter"].minable.result = nil
	data.raw["inserter"]["burner-inserter"].minable.results = data.raw["recipe"]["burner-inserter"].normal and data.raw["recipe"]["burner-inserter"].normal.ingredients or data.raw["recipe"]["burner-inserter"].ingredients
end