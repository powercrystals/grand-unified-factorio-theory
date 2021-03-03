local contentlist = require("lib.contentlist")
local featuredata = contentlist.execute_feature_data("crushing") -- expected: table of "ores" and "gems", each with string values of ores or gems to crush
for modname, mod in pairs(featuredata) do
	for _, item in pairs(mod.gems or {}) do
		guftlib.builder.build_gem_crushing_recipe(item, modname)
	end
	for _, item in pairs(mod.ores or {}) do
		guftlib.builder.build_ore_crushing_recipe(item, modname)
	end
end