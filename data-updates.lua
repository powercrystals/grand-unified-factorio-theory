guftlib = require("lib.guftlib")

require("core.ore-backup")

local contentlist = require("lib.contentlist")
contentlist.execute_stage("updates")

guftlib = nil