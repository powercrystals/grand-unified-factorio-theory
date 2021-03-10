-- GUFT is written to essentially consist of a set of "sub-mods" rather than be one very large mod, in order to improve readability/expandability/etc
-- these are in turn grouped into two sets:
--  mod-support contains data specific to one mod or one suite of mods
--  features contain data for things that span mods
-- the latter has an obvious issue: what happens to the per-mod data for a feature?
-- that's stored in a feature-support subfolder of each mod-support, which the mod-support should not load directly. the files in here should be named after the feature in question
-- feature-support returns a table whose content depends on the feature in question
-- mods and features both consist of "stages", one for each thing that factorio would load normally
-- those root files are just stubs that call a function in here, which in turn calls the corresponding file for each sub-mod
-- there is also a function that the features can use to collate their data
-- mods also list which features they support
-- this just leaves settings and locale as the odd ones out, and we're probably stuck with that
-- note that features with settings must call execute_feature_data BEFORE they check their setting to avoid CRC mismatches
--  this doubly means that the feature-support files should not change anything themselves because they won't know what their parent feature is doing yet (if it's doing anything at all)

local contentlist = {}
local debug = require("lib.debug")

local function declare_content(name, stages)
	return
	{
		name = name,
		stages = stages or {},
	}
end

local function declare_mod(name, stages, features)
	local mod = declare_content(name, stages)
	mod.features = {}
	if features then
		for _, feature in pairs(features) do
			mod.features[feature] = true
		end
	end

	return mod
end

function contentlist.execute_stage(stage)
	local stage_file_names = { data = "data", updates = "data-updates", fixes = "data-final-fixes", control = "control"}

	debug.log("Executing stage " .. stage)

	for _, mod in pairs(contentlist.mods) do
		if mod.stages[stage] then
			debug.log("Executing stage " .. stage .." for mod " .. mod.name)
			local files = require("mod-support." .. mod.name .. "." .. stage_file_names[stage])
			for _, file in pairs(files) do
				debug.log("Executing file mod-support." .. mod.name .. "." .. file)
				require("mod-support." .. mod.name .. "." .. file)
			end
		end
	end

	for _, feature in pairs(contentlist.features) do
		if feature.stages[stage] then
			debug.log("Executing stage " .. stage .." for feature " .. feature.name)
			require("features." .. feature.name .. "." .. stage_file_names[stage])
		end
	end
end

function contentlist.execute_feature_data(feature)
	local featuredata = {}

	for _, mod in pairs(contentlist.mods) do
		if mod.features[feature] then
			debug.log("Executing feature " .. feature .. " data for mod " .. mod.name)
			featuredata[mod.name] = require("mod-support." .. mod.name .. ".feature-support." .. feature)
		end
	end

	return featuredata
end

contentlist.features =
{
	declare_content("belt-speeds",
		{ fixes = true }
	),
	declare_content("bio-speed-changes",
		{ fixes = true }
	),
	declare_content("crushing",
		{ data = true }
	),
	declare_content("decomposition",
		{ fixes = true }
	),
	declare_content("equipment",
		{ fixes = true }
	),
	declare_content("fast-replace",
		{ fixes = true }
	),
	declare_content("hand-craft-filter",
		{ fixes = true }
	),
	declare_content("magic-barrels",
		{ fixes = true }
	),
	declare_content("miner-area",
		{ updates = true }
	),
	declare_content("ore-control",
		{ fixes = true }
	),
	declare_content("productivity",
		{ fixes = true }
	),
	declare_content("radar-range",
		{ updates = true }
		),
	declare_content("unicomp",
		{ updates = true }
		),
}

contentlist.mods =
{
	declare_mod("248k",
		{ data = true, updates = true },
		{ "equipment", "ore-control", "productivity", }
	),
	declare_mod("aai",
		{ updates = true },
		{ "equipment", }
	),
	declare_mod("accumulator-wagon",
		nil,
		{ "equipment", }
	),
	declare_mod("aircraft",
		nil,
		{ "equipment", }
	),
	declare_mod("angel",
		{ data = true, updates = true, fixes = true },
		{ "bio-speed-changes", "crushing", "decomposition", "equipment", "fast-replace", "magic-barrels", "ore-control", "productivity", "unicomp", }
	),
	declare_mod("armor-pocket",
		nil,
		{ "equipment", }
	),
	declare_mod("automatic-train-painter",
		nil,
		{ "equipment", }
	),
	declare_mod("base",
		{ updates = true, },
		{ "belt-speeds", "crushing", "decomposition", "equipment", "fast-replace", "magic-barrels", "miner-area", "ore-control", "radar-range", "unicomp", }
	),
	declare_mod("bio-industries",
		nil,
		{ "bio-speed-changes", "productivity", }
	),
	declare_mod("bob",
		{ data = true, updates = true },
		{ "belt-speeds", "bio-speed-changes", "crushing", "decomposition", "equipment", "fast-replace", "magic-barrels", "miner-area", "ore-control", "radar-range", "unicomp", }
	),
	declare_mod("cargo-ships", 
		{ data = true, control = true },
		{ "equipment", }
	),
	declare_mod("clown",
		{ data = true, fixes = true },
		{ "crushing", "decomposition", "fast-replace", "magic-barrels", "ore-control", "unicomp", }
	),
	declare_mod("hovercraft",
		nil,
		{ "equipment", }
	),
	declare_mod("ice-ore",
		nil,
		{ "ore-control", }
	),
	declare_mod("jetpack",
		nil,
		{ "equipment", }
	),
	declare_mod("loader-redux",
		nil,
		{ "belt-speeds", }
	),
	declare_mod("miniloader",
		nil,
		{ "belt-speeds", }
	),
	declare_mod("nuclear-locomotive",
		nil,
		{ "equipment", }
	),
	declare_mod("omni",
		{ updates = true, fixes = true }, 
		{ "ore-control" }
	),
	declare_mod("power-armor-mk3",
		nil,
		{ "equipment", }
	),
	declare_mod("py",
		nil,
		{ "equipment", "ore-control", }
	),
	declare_mod("schall",
		{ data = true },
		nil
	),
	declare_mod("yuoki",
		{ data = true, updates = true, fixes = true },
		{ "belt-speeds", "bio-speed-changes", "crushing", "decomposition", "equipment", "fast-replace", "ore-control", "productivity", "unicomp" }
	),
}

return contentlist