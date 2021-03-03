if mods["angelssmelting"] and mods["Yuoki"] then
	data:extend(
	{
		{
			type = "item",
			name = "processed-durotal",
			icon = "__grand-unified-factorio-theory__/graphics/items/processed-durotal.png",
			icon_size = 32,
			subgroup = "angels-durotal",
			order = "b",
			stack_size = 200
		},
		{
			type = "item",
			name = "pellet-durotal",
			icon = "__grand-unified-factorio-theory__/graphics/items/pellet-durotal.png",
			icon_size = 32,
			subgroup = "angels-durotal",
			order = "c",
			stack_size = 200
		},
		{
			type = "item",
			name = "ingot-durotal",
			icon = "__grand-unified-factorio-theory__/graphics/items/ingot-durotal.png",
			icon_size = 32,
			subgroup = "angels-durotal",
			order = "d",
			stack_size = 200
		},
		{
			type = "fluid",
			name = "liquid-molten-durotal",
			icon = "__grand-unified-factorio-theory__/graphics/items/molten-durotal.png",
			icon_size = 32,
			subgroup = "angels-durotal-casting",
			order = "f",
			default_temperature = 231.9,
			heat_capacity = "0KJ",
			base_color = {r=0.1, g=0.1, b=0.7},
			flow_color = {r=0.1, g=0.1, b=0.7},
			max_temperature = 231.9,
			pressure_to_speed_ratio = 0.4,
			flow_to_energy_ratio = 0.59,
			auto_barrel = false
		},
		{
			type = "item",
			name = "processed-nuatreel",
			icon = "__grand-unified-factorio-theory__/graphics/items/processed-nuatreel.png",
			icon_size = 32,
			subgroup = "angels-nuatreel",
			order = "b",
			stack_size = 200
		},
		{
			type = "item",
			name = "pellet-nuatreel",
			icon = "__grand-unified-factorio-theory__/graphics/items/pellet-nuatreel.png",
			icon_size = 32,
			subgroup = "angels-nuatreel",
			order = "c",
			stack_size = 200
		},
		{
			type = "item",
			name = "ingot-nuatreel",
			icon = "__grand-unified-factorio-theory__/graphics/items/ingot-nuatreel.png",
			icon_size = 32,
			subgroup = "angels-nuatreel",
			order = "d",
			stack_size = 200
		},
		{
			type = "fluid",
			name = "liquid-molten-nuatreel",
			icon = "__grand-unified-factorio-theory__/graphics/items/molten-nuatreel.png",
			icon_size = 32,
			subgroup = "angels-nuatreel-casting",
			order = "f",
			default_temperature = 231.9,
			heat_capacity = "0KJ",
			base_color = {r=0.85, g=0.85, b=0.2},
			flow_color = {r=0.85, g=0.85, b=0.2},
			max_temperature = 231.9,
			pressure_to_speed_ratio = 0.4,
			flow_to_energy_ratio = 0.59,
			auto_barrel = false
		},
		{
			type = "fluid",
			name = "liquid-molten-hmetal",
			icon = "__grand-unified-factorio-theory__/graphics/items/molten-hmetal.png",
			icon_size = 32,
			subgroup = "angels-hmetal-casting",
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