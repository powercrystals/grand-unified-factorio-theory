-- yuoki coke -> bio industries coke
guftlib.global.replace_item("yir_fuel_coks", "pellet-coke")
-- yuoki meat -> angel meat
guftlib.global.replace_item("ye_rawmeat", "bio-raw-meat")
-- yuoki crushed coal -> angel crushed coal
guftlib.global.replace_item("y-coal-dust", "coal-crushed")
-- yuoki dirt -> angel soil
guftlib.global.replace_item("y-dirt", "solid-soil")

if data.raw["recipe"]["yir_fuel_coks_recipe"] and data.raw["recipe"]["bi-coke-coal"] then -- BI's performs much worse than yuoki's; we're using BI's item so keeping to BI's balance
	for _, input in pairs(data.raw["recipe"]["yir_fuel_coks_recipe"].ingredients) do
		if input.name == "coal" then
			input.amount = 8
		end
	end
end