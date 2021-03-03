-- the idea is relatively simple:
-- there are some ores the player needs a lot of (iron, coal, titanium) and some that are only ever needed in trace quantities (silver, gold, platinum)
-- in addition, some show up early (copper, durotal) and some much later (thorium, tungsten)
-- base_density is set based on how much of that ore the player needs
-- regular_rq_factor_multiplier is set similarly
-- starting_rq_factor_multiplier likewise, but its presence marks this as a starting area ore
-- region_size is set based on how common the ore should be
--
-- where it gets weird is with multiple ore types enabled. angel's ores 1 and 2 need to be start ores... but if bob's ores are on they aren't needed
-- theoretically the player can screw themselves if they e.g. enable bob's ores in GUFT's settings and then disable the individual ores but... don't do that
--
-- the expected "experiences" are one of the following:
--  vanilla-only; lots of iron and coal, some copper, some oil, trace stone and uranium
--  bob's: ores grouped by tier, mined and directly processed
--  angel's (optionally +clown's): raw ores sorted into refined ores (bob's and vanilla)
--  bob's+angel's (optionally +clown's) both: bob's ores are the main source but angel's are available if bob's can't be found
--  omnite only: no other ores, all resources are made from omnite
--  omnite + any of the above: omnite is a rare ore you can use to fill gaps (like bob's + angel's above)
--  py: like bob, ores grouped by tiers. we're not gonna support py + anything else because py redoes so much stuff that would be a huge undertaking
--     but py also reuses some names from bob, so we're going to have to check to see if it's active before overwriting
--  yuoki is off in its own corner barely connected to anything
--
-- angel's 2 and 4 are rarer as they're not useful on their own. all 6 are rarer if bob's is enabled
-- bob's is all over the place as it's a complete tech tree
-- clown's stuff is mostly super rare as it's all weird alternate options
-- omnite is common if it's by itself, and progressively rarer the more other mods are enabled
-- yuoki is moderate rare (less so if angel's isn't present)
-- GUFT's ores are moderate to rare depending on the exact ore (sand is much more common than osmium)
--
--
-- so we define:
--  guft_tier, 1-5 (higher is later game). controls base_density, regular_rq_factor_multiplier, and order
--  guft_rarity, 1-5 (higher is more rare). controls regular_rq_factor_multiplier and region_size
--  guft_start, true/false. controls starting_rq_factor_multiplier and has_starting_area_placement
--
-- this is processed below and turned into the real values mentioned above
-- other parameters are passed in as is so e.g. crude oil is placed correctly

local contentlist = require("lib.contentlist")
local featuredata = contentlist.execute_feature_data("ore-control") -- expected: table of ores, containing data described at the top of this file (guft_tier, guft_rarity, guft_start, and guft_enabled, plus data for autoplace) with key being ore name
local autoplace_overrides = {}

local function disable_ore(ore)
	if not data.raw["resource"][ore] then
		return
	end

	if data.raw["resource"][ore].autoplace then
		data.raw["autoplace-control"][data.raw["resource"][ore].autoplace.control] = nil
		data.raw["map-gen-presets"]["default"]["rail-world"].basic_settings.autoplace_controls[data.raw["resource"][ore].autoplace.control] = nil
		data.raw["map-gen-presets"]["default"]["ribbon-world"].basic_settings.autoplace_controls[data.raw["resource"][ore].autoplace.control] = nil
		data.raw["map-gen-presets"]["default"]["rich-resources"].basic_settings.autoplace_controls[data.raw["resource"][ore].autoplace.control] = nil
		data.raw["resource"][ore].autoplace = nil
	end
end

for _, mod in pairs(featuredata) do
	for name, ore in pairs(mod) do
		if ore.guft_enabled ~= nil and not ore.guft_enabled then
			disable_ore(name)
		end

		autoplace_overrides[name] = ore
	end
end

if settings.startup["guft-feature-ore-control"].value then
	for name, resource in pairs(data.raw["resource"]) do
		if resource.autoplace then
			if not autoplace_overrides[name] then
				log("Ore with autoplace " .. name .. " is not known to GUFT and ore overhaul will not be able to control it")
			else
				local autoplace = autoplace_overrides[name]
				autoplace.name = name

				local guft_tier_densities = { 10, 8, 4, 2, 1 }
				local guft_tier_qualities = { 1.2, 1.1, 1.0, 0.9, 0.8 }
				local guft_tier_orders = { "b", "c", "d", "e", "f" }
				local guft_rarity_qualities = { 1.2, 1.1, 1.0, 0.9, 0.8 }
				local guft_rarity_sizes = { 1, 1.1, 1.2, 1.5, 2 }

				if autoplace.guft_tier then
					autoplace.base_density = guft_tier_densities[autoplace.guft_tier]
					autoplace.regular_rq_factor_multiplier = guft_tier_qualities[autoplace.guft_tier]
					autoplace.order = guft_tier_orders[autoplace.guft_tier]
					autoplace.regular_rq_factor_multiplier = autoplace.regular_rq_factor_multiplier * guft_rarity_qualities[autoplace.guft_rarity]
					autoplace.region_size = guft_rarity_sizes[autoplace.guft_rarity]

					if autoplace.guft_start then
						autoplace.has_starting_area_placement = true
						autoplace.starting_rq_factor_multiplier = guft_tier_qualities[autoplace.guft_tier]
					end

					autoplace.guft_tier = nil
					autoplace.guft_rarity = nil
					autoplace.guft_start = nil
				else
					autoplace.region_size = 1.0
				end

				autoplace.region_size = autoplace.region_size / settings.startup["guft-feature-ore-control-rarity"].value

				resource.autoplace = guftlib.resource_autoplace.resource_autoplace_settings(autoplace)
			end
		end
	end
end

if settings.startup["guft-mores-enable"].value then
	for name, resource in pairs(data.raw["resource"]) do
		if resource.infinite then
			resource.infinite_depletion_amount = 0 -- this is outside the autoplace check so it hits cargo ships resources
		else
			if resource.autoplace then
				resource.autoplace.richness_expression =
				{
					type = "literal-number",
					literal_value = 100000000
				}
			end
		end
	end
end