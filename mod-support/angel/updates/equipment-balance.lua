if settings.startup["guft-feature-equipment-angel-vehicle-equipment"].value == "bob-balance" and data.raw["generator-equipment"]["angels-burner-generator-vequip"] then
	data.raw["generator-equipment"]["angels-burner-generator-vequip"].power = "400kW"
	data.raw["generator-equipment"]["angels-fusion-reactor-vequip"].power = "200kW"

	data.raw["roboport-equipment"]["angels-construction-roboport-vequip"].robot_limit = 5
	data.raw["roboport-equipment"]["angels-construction-roboport-vequip"].construction_radius = 10
	
	data.raw["energy-shield-equipment"]["angels-heavy-energy-shield-vequip"].max_shield_value = 50
	data.raw["energy-shield-equipment"]["angels-heavy-energy-shield-vequip"].energy_per_shield = "25kJ"
end