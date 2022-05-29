local contentlist = require("lib.contentlist")
local featuredata = contentlist.execute_feature_data("lab-unifier") -- expected: table of labnames that are supposed to be equivalent to vanilla labs (keys irrelevant)

for modname, mod in pairs(featuredata) do
	for _, labname in pairs(mod) do
		modlab = data.raw["lab"][labname]
		if modlab then
			for _, input in pairs(data.raw["lab"]["lab"].inputs) do
				found = false
				for _, modinput in pairs(modlab.inputs) do
					if modinput == input then
						found = true
					end
				end

				if not found then
					table.insert(modlab.inputs, input)
				end
			end
		end
	end
end