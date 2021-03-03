if mods["bobpower"] and mods["angelsindustries"] then -- angel changes the fuel cycles on these and you do not want a uranium reactor to suddenly turn into a thorium reactor
	data.raw.reactor["nuclear-reactor"].next_upgrade = nil
	data.raw.reactor["nuclear-reactor-2"].next_upgrade = nil
end