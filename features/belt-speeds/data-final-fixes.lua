local contentlist = require("lib.contentlist")
local featuredata = contentlist.execute_feature_data("belt-speeds") -- expected: table of "type", "name", and "tier"

if settings.startup["guft-feature-belt-speeds"].value then
	local tier_speeds = { 15 }

	local function get_tier_speed(tier)
		if tier == 0 then
			return 10
		end

		if tier_speeds[tier] then
			return tier_speeds[tier]
		end

		local previous_tier_speed = get_tier_speed(tier - 1)
		local speed

		if tier == 2 or (tier == 3 and not data.raw["transport-belt"]["basic-transport-belt"]) then
			speed = previous_tier_speed * 2
		else
			speed = previous_tier_speed + get_tier_speed(tier - 2)
		end

		tier_speeds[tier] = speed
		return speed
	end

	if data.raw["transport-belt"]["basic-transport-belt"] then
		tier_speeds[1] = 20
	end

	for _, mod in pairs(featuredata) do
		for _, belt in pairs(mod) do
			if data.raw[belt.type][belt.name] then
				data.raw[belt.type][belt.name].speed = get_tier_speed(belt.tier) / 480
			end
		end
	end
end