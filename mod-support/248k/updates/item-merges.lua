guftlib.global.replace_item("fu_lead_ore_item", "lead-ore")
guftlib.global.replace_item("fu_lead_item", "lead-plate")
guftlib.global.replace_item("el_aluminum_ore_item", "bauxite-ore")
guftlib.global.replace_item("el_aluminum_item", "aluminium-plate")
guftlib.global.replace_item("fi_plutonium239_item", "plutonium-239")
guftlib.global.replace_item("fi_thorium232_item", "thorium-232")
guftlib.global.replace_item("el_lithium_battery", "lithium-ion-battery")

if data.raw["fluid"]["fu_hydrogen"] and data.raw["fluid"]["gas-hydrogen"] then
	-- if we're going to do this replacement, we need to set up angel's gasses to have temperatures

	data.raw["fluid"]["gas-hydrogen"].default_temperature = 15
	data.raw["fluid"]["gas-hydrogen"].max_temperature = 1000
	data.raw["fluid"]["gas-hydrogen"].heat_capacity = '1kJ'
	
	data.raw["fluid"]["gas-oxygen"].default_temperature = 15
	data.raw["fluid"]["gas-oxygen"].max_temperature = 1000
	data.raw["fluid"]["gas-oxygen"].heat_capacity = '10kJ'
	
	data.raw["fluid"]["gas-deuterium"].default_temperature = 15
	data.raw["fluid"]["gas-deuterium"].max_temperature = 1000
	data.raw["fluid"]["gas-deuterium"].heat_capacity = '1kJ'
end

guftlib.global.replace_item("fu_hydrogen", "gas-hydrogen")
guftlib.global.replace_item("fu_oxygen", "gas-oxygen")
guftlib.global.replace_item("fu_deuterium", "gas-deuterium")