guftlib = require("lib.guftlib")

-- force angel's to allow bob's (etc) ores to generate (though ore backup will cover that anyway)
if angelsmods and angelsmods.refining then
	angelsmods.refining.disable_ore_override = true
end

guft = guft or {}

require("core.ore-backup")

local contentlist = require("lib.contentlist")
contentlist.execute_stage("data")

guftlib = nil