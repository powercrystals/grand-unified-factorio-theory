guftlib = require("lib.guftlib")

require("core.ore-restore")

local contentlist = require("lib.contentlist")
contentlist.execute_stage("fixes")

guftlib = nil