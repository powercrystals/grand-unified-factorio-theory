if settings.startup["guft-newores-cargoships"].value then
	script.on_event(defines.events.on_chunk_generated, check_chunk_for_sea_resources)
	script.on_nth_tick(120, power_gas_rig)
	
	script.on_event(defines.events.on_built_entity, on_gas_rig_entity_built)
	script.on_event(defines.events.on_robot_built_entity, on_gas_rig_entity_built)
	script.on_event(defines.events.script_raised_built, on_gas_rig_entity_built)
		
	script.on_event(defines.events.on_entity_died, on_gas_rig_entity_removed)
	script.on_event(defines.events.on_player_mined_entity, on_gas_rig_entity_removed)
	script.on_event(defines.events.on_robot_mined_entity, on_gas_rig_entity_removed)
	script.on_event(defines.events.script_raised_destroy, on_gas_rig_entity_removed)
end