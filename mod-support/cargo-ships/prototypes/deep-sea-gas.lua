if mods["cargo-ships"] and mods["angelspetrochem"] then
	local deep_gas = table.deepcopy(data.raw["resource"]["angels-natural-gas"])
	deep_gas.name = "deep_gas"
	deep_gas.infinite_depletion_amount = 40
	deep_gas.autoplace = nil
	deep_gas.collision_mask = {"resource-layer"}

	data:extend({deep_gas})
end