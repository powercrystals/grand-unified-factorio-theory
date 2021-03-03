local contentlist = require("lib.contentlist")
local featuredata = contentlist.execute_feature_data("radar-range") -- expected: table of "radars", key of name and value of tier

local function radar_range(tier)
	if not tier or tier < 1 then
		tier = 1
	end

	return
	{
		max_distance_of_sector_revealed = 10 * (tier + 1),
		max_distance_of_nearby_sector_revealed = 3 * tier
	}
end

if settings.startup["guft-feature-radar-range"].value then
	for _, mod in pairs(featuredata) do
		for radar, tier in pairs(mod.radars or {}) do
			if data.raw["radar"][radar] then
				local range = radar_range(tier)
				data.raw["radar"][radar].max_distance_of_sector_revealed = range.max_distance_of_sector_revealed
				data.raw["radar"][radar].max_distance_of_nearby_sector_revealed = range.max_distance_of_nearby_sector_revealed
			end
		end
	end
end