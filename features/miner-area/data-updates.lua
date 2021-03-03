local contentlist = require("lib.contentlist")
local featuredata = contentlist.execute_feature_data("miner-area") -- expected: table of "mines", key of name and value of radius

if settings.startup["guft-feature-miner-area"].value then
	for _, mod in pairs(featuredata) do
		for mine, radius in pairs(mod.mines or {}) do
			if data.raw["mining-drill"][mine] then
				data.raw["mining-drill"][mine].resource_searching_radius = radius
			end
		end
	end
end