local function disallow_composition(recipe)
	if data.raw.recipe[recipe] then
		data.raw.recipe[recipe].allow_decomposition = false
		data.raw.recipe[recipe].allow_as_intermediate = false
	end
end

disallow_composition("alt1-science-pack-1")
disallow_composition("alt2-science-pack-1")

disallow_composition("alt1-science-pack-2")
disallow_composition("alt2-science-pack-2")
disallow_composition("alt3-science-pack-2")

disallow_composition("alt1-science-pack-3")
disallow_composition("alt2-science-pack-3")
disallow_composition("alt3-science-pack-3")

disallow_composition("alt1-military-science-pack")
disallow_composition("alt2-military-science-pack")

disallow_composition("alt1-production-science-pack")
disallow_composition("alt2-production-science-pack")

disallow_composition("alt1-high-tech-science-pack")
disallow_composition("alt2-high-tech-science-pack")