-- unicomp by default lets you turn any resource into any other resource. this works okay in vanilla but not when there's a real tier system to ores
-- especially, it lets you skip straight to plastic which with angel's petro involved is actually huge
-- 
-- this version is slightly more refined:
-- if angel's or clown's is installed, unicomp can be turned into those raw ores
-- if angel's petrochem is installed, remove the crude oil and add multiphase oil and natural gas
-- if bob's is installed and bob ore generation is enabled, unicomp can be turned into bob's ores and unsorted gems
--  ditto for angel/clown extended ores
-- if omnimatter is installed, unicomp can be turned into omnite
--
-- bob's ores (and angel/clown extended ores) can be turned into unicomp
--
-- the point is to keep the player from being able to e.g. turn iron into titanium trivially, you have to go through the angel sorting process (or at least at a very lossy rate)
--
--
-- remove all ore-to-unicomp and replace it with plate-to-unicomp
-- remove unicomp-to-plastic entirely
-- weaken all the X-to-unicomp ratios so it's not a free exchange
-- unicomp from:
--   plates (base)
--   plates (bob)
--   petro products (base)
--   petro products (angel)
-- unicomp to:
--   ores (angel)
--   ores (clown)
--   ores (base, if no angel)
--   ores (bob, if no angel)
--   ores (yuoki, if no angel)
--   ores (omni)

local contentlist = require("lib.contentlist")
local featuredata = contentlist.execute_feature_data("unicomp") -- expected: table of "to" and "from", each with a list of "name", "type", and "tier"

if settings.startup["guft-feature-unicomp"].value and data.raw["recipe-category"]["yuoki-atomics-recipe"] then
	-- first, clear all existing recipes
	for _, recipe in pairs(data.raw["recipe"]) do
		if recipe.subgroup == "y-atomics" or recipe.subgroup == "y-atomics-f" or recipe.subgroup == "y-atomics-r" then
			guftlib.recipe.delete(recipe.name)
		end
	end

	for modname, mod in pairs(featuredata) do
		mod.from = mod.from or {}
		mod.to = mod.to or {}

		for _, from in pairs(mod.from) do
			guftlib.builder.build_unicomp_conversion_from_other(from.name, from.type, from.tier, modname)
		end

		for _, to in pairs(mod.to) do
			guftlib.builder.build_unicomp_conversion_to_other(to.name, to.type, to.tier, modname)
		end
	end
end