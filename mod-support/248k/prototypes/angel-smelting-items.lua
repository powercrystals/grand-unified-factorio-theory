if mods["angelssmelting"] and mods["248k"] then
	data:extend(
	{
		{
			type = "fluid",
			name = "liquid-molten-industrial-steel",
			icon = "__grand-unified-factorio-theory__/graphics/items/molten-industrial-steel.png",
			icon_size = 32,
			subgroup = "angels-industrial-steel-casting",
			order = "f",
			default_temperature = 231.9,
			heat_capacity = "0KJ",
			base_color = {r=0.1, g=0.1, b=0.1},
			flow_color = {r=0.1, g=0.1, b=0.1},
			max_temperature = 231.9,
			pressure_to_speed_ratio = 0.4,
			flow_to_energy_ratio = 0.59,
			auto_barrel = false
		},
	})
end