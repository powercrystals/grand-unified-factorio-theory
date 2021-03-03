-- add modules to farm buildings and allow their use
if data.raw["assembling-machine"]["ye_farm"] then
	data.raw["assembling-machine"]["ye_farm"].module_specification = { module_slots = 2 }
	data.raw["assembling-machine"]["ye_farm"].allowed_effects = { "speed", "productivity", "consumption", "pollution" }

	data.raw["assembling-machine"]["ye_pool"].module_specification = { module_slots = 2 }
	data.raw["assembling-machine"]["ye_pool"].allowed_effects = { "speed", "productivity", "consumption", "pollution" }

	data.raw["assembling-machine"]["ye_meatfarm"].module_specification = { module_slots = 2 }
	data.raw["assembling-machine"]["ye_meatfarm"].allowed_effects = { "speed", "productivity", "consumption", "pollution" }
end