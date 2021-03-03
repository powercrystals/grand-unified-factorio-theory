-- hydra farm has its E-W sprites flipped
if data.raw["assembling-machine"]["ye_pool"] then
	local temp = data.raw["assembling-machine"]["ye_pool"].animation.east
	data.raw["assembling-machine"]["ye_pool"].animation.east = data.raw["assembling-machine"]["ye_pool"].animation.west
	data.raw["assembling-machine"]["ye_pool"].animation.west = temp
end

-- fish and wood have the wrong icon size (yuoki still has them at 32 when they became 64)
if data.raw["recipe"]["ye_synwood_recipe"] then
	data.raw["recipe"]["ye_synwood_recipe"].icon_size = 64
end

if data.raw["recipe"]["ye_synwood_recipe"] then
	data.raw["recipe"]["ye_synwood_recipe"].icon_size = 64
end

if data.raw["recipe"]["ye_grow_fish1"] then
	data.raw["recipe"]["ye_grow_fish1"].icon_size = 64
end