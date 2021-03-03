-- unify angel ore sorting speeds
if data.raw["assembling-machine"]["ore-sorting-facility"] then
	data.raw["assembling-machine"]["ore-sorting-facility"].crafting_speed = 1
	data.raw["assembling-machine"]["ore-sorting-facility-2"].crafting_speed = 1.5
	data.raw["assembling-machine"]["ore-sorting-facility-3"].crafting_speed = 2
	data.raw["assembling-machine"]["ore-sorting-facility-4"].crafting_speed = 3

	data.raw["assembling-machine"]["ore-floatation-cell"].crafting_speed = 1.5
	data.raw["assembling-machine"]["ore-floatation-cell-2"].crafting_speed = 2
	data.raw["assembling-machine"]["ore-floatation-cell-3"].crafting_speed = 3

	data.raw["assembling-machine"]["ore-leaching-plant"].crafting_speed = 1.5
	data.raw["assembling-machine"]["ore-leaching-plant-2"].crafting_speed = 2
	data.raw["assembling-machine"]["ore-leaching-plant-3"].crafting_speed = 3

	data.raw["assembling-machine"]["ore-refinery"].crafting_speed = 2
	data.raw["assembling-machine"]["ore-refinery-2"].crafting_speed = 3
end