function on_gas_rig_entity_built(e)
	local ent = e.created_entity or e.entity
	if ent.name == "gas_rig" then
		local p = ent.position
		local a = {{p.x-2, p.y-2},{p.x+2,p.y+2}}
		local deep_gas = ent.surface.find_entities_filtered{area=a, name={"deep_gas", "deep_fissure"}}
		if #deep_gas == 0 then
			ent.destroy()
			if e.player_index ~= nil then
				game.players[e.player_index].insert{name="gas_rig",count= 1}
				game.players[e.player_index].print("Gas rigs can only placed on water")
			end
			return
		end
		local pos =  ent.position
		local or_power = ent.surface.create_entity{name = "or_gas_power", position = pos, force = ent.force}
		table.insert(global.or_generators,or_power)
		ent.surface.create_entity{name = "or_pole", position = pos, force = ent.force}
		ent.surface.create_entity{name = "or_radar", position = pos, force = ent.force}
		ent.surface.create_entity{name = "or_lamp", position = {pos.x - 3, pos.y -3}, force = ent.force}
		ent.surface.create_entity{name = "or_lamp", position = {pos.x + 2, pos.y -3}, force = ent.force}
		ent.surface.create_entity{name = "or_lamp", position = {pos.x + 2, pos.y + 3}, force = ent.force}
		ent.surface.create_entity{name = "or_lamp", position = {pos.x - 3, pos.y + 3}, force = ent.force}
		return
	end
end

function on_gas_rig_entity_removed(e)
	if not e.entity then
		return
	end

	local ent = e.entity

	if ent.name == "gas_rig" then
		local pos = ent.position
		local or_inv = ent.surface.find_entities_filtered{area =  {{pos.x-4, pos.y-4},{pos.x+4, pos.y+4}},  name="or_gas_power"}
		for i = 1, #or_inv do
			or_inv[i].destroy()
		end
		local or_inv = ent.surface.find_entities_filtered{area =  {{pos.x-4, pos.y-4},{pos.x+4, pos.y+4}},  name="or_lamp"}
		for i = 1, #or_inv do
			or_inv[i].destroy()
		end
		local or_inv = ent.surface.find_entities_filtered{area =  {{pos.x-4, pos.y-4},{pos.x+4, pos.y+4}},  name="or_pole"}
		for i = 1, #or_inv do
			or_inv[i].destroy()
		end
		local or_inv = ent.surface.find_entities_filtered{area =  {{pos.x-4, pos.y-4},{pos.x+4, pos.y+4}},  name="or_radar"}
		for i = 1, #or_inv do
			or_inv[i].destroy()
		end
	end
end

function power_gas_rig(e)
	if not game.active_mods["cargo-ships"] or not settings.startup["guft-newores-cargoships"].value then
		return
	end

	if global.or_generators == nil then
		global.or_generators = {}
		for _, surface in pairs(game.surfaces) do
			for _, generator in pairs(surface.find_entities_filtered{name="or_gas_power"}) do
				table.insert(global.or_generators, generator)
			end
		end
	end
	for i, generator in pairs(global.or_generators) do
		if(generator.valid) then
			generator.fluidbox[1] = {name="steam", amount = 200, temperature=165}
		else
			table.remove(global.or_generators,i)
		end
	end
end