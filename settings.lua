-- setting groups
-- #1 [a]: mod ores (vanilla, angel, bob, etc.)
-- #2 [b]: guft ores (fluorite, osmium, etc.)
-- #3 [c]: feature settings
-- #4 [d]: balance settings
-- #5 [e]: misc settings
-- #6 [f]: mores
-- ...
-- #N [z]: debug

data:extend(
{
	{
		type = "bool-setting",
		name = "guft-enableores-angel",
		setting_type = "startup",
		default_value = true,
		order = "a[modores]-angel",
	},
	{
		type = "bool-setting",
		name = "guft-enableores-angelresource",
		setting_type = "startup",
		default_value = true,
		order = "a[modores]-angel-resource",
	},
	{
		type = "bool-setting",
		name = "guft-enableores-base",
		setting_type = "startup",
		default_value = true,
		order = "a[modores]-base",
	},
	{
		type = "string-setting",
		name = "guft-enableores-base-preset",
		setting_type = "startup",
		default_value = "all",
		allowed_values = { "all", "angel", "py" },
		order = "a[modores]-base-preset"
	},
	{
		type = "bool-setting",
		name = "guft-enableores-bob",
		setting_type = "startup",
		default_value = true,
		order = "a[modores]-bob",
	},
	{
		type = "bool-setting",
		name = "guft-enableores-bobsulfur",
		setting_type = "startup",
		default_value = true,
		order = "a[modores]-bob-sulfur",
	},
	{
		type = "bool-setting",
		name = "guft-enableores-clown",
		setting_type = "startup",
		default_value = true,
		order = "a[modores]-clown",
	},
	{
		type = "bool-setting",
		name = "guft-enableores-clownresource",
		setting_type = "startup",
		default_value = true,
		order = "a[modores]-clown-resource",
	},
	{
		type = "bool-setting",
		name = "guft-enableores-omni",
		setting_type = "startup",
		default_value = true,
		order = "a[modores]-omni",
	},
	{
		type = "bool-setting",
		name = "guft-enableores-py",
		setting_type = "startup",
		default_value = true,
		order = "a[modores]-py",
	},
	{
		type = "bool-setting",
		name = "guft-enableores-yuoki",
		setting_type = "startup",
		default_value = true,
		order = "a[modores]-yuoki",
	},

	{
		type = "bool-setting",
		name = "guft-newores-248k",
		setting_type = "startup",
		default_value = true,
		order = "b[newores]-248k",
	},
	{
		type = "bool-setting",
		name = "guft-newores-angels",
		setting_type = "startup",
		default_value = true,
		order = "b[newores]-angel",
	},
	{
		type = "bool-setting",
		name = "guft-newores-angelsresource",
		setting_type = "startup",
		default_value = true,
		order = "b[newores]-angel-resource",
	},
	{
		type = "bool-setting",
		name = "guft-newores-clowns",
		setting_type = "startup",
		default_value = true,
		order = "b[newores]-clown",
	},
	{
		type = "bool-setting",
		name = "guft-newores-cargoships",
		setting_type = "startup",
		default_value = true,
		order = "b[newores]-cargoships",
	},
	{
		type = "string-setting",
		name = "guft-newores-cargoships-oil-frequency",
		setting_type = "startup",
		default_value = "normal",
		allowed_values = { "none", "minimal", "very-very-low", "very-low", "low", "normal", "high", "very-high" },
		order = "b[newores]-cargoships-oil-frequency"
	},
	{
		type = "string-setting",
		name = "guft-newores-cargoships-oil-richness",
		setting_type = "startup",
		default_value = "regular",
		allowed_values = { "very-poor", "poor", "regular", "good", "very-good" },
		order = "b[newores]-cargoships-oil-richness"
	},
	{
		type = "string-setting",
		name = "guft-newores-cargoships-gas-frequency",
		setting_type = "startup",
		default_value = "normal",
		allowed_values = { "none", "minimal", "very-very-low", "very-low", "low", "normal", "high", "very-high" },
		order = "b[newores]-cargoships-gas-frequency"
	},
	{
		type = "string-setting",
		name = "guft-newores-cargoships-gas-richness",
		setting_type = "startup",
		default_value = "regular",
		allowed_values = { "very-poor", "poor", "regular", "good", "very-good" },
		order = "b[newores]-cargoships-gas-richness"
	},
	{
		type = "string-setting",
		name = "guft-newores-cargoships-fissure-frequency",
		setting_type = "startup",
		default_value = "normal",
		allowed_values = { "none", "minimal", "very-very-low", "very-low", "low", "normal", "high", "very-high" },
		order = "b[newores]-cargoships-fissure-frequency"
	},
	{
		type = "string-setting",
		name = "guft-newores-cargoships-fissure-richness",
		setting_type = "startup",
		default_value = "regular",
		allowed_values = { "very-poor", "poor", "regular", "good", "very-good" },
		order = "b[newores]-cargoships-fissure-richness"
	},

	{
		type = "bool-setting",
		name = "guft-feature-belt-speeds",
		setting_type = "startup",
		default_value = true,
		order = "c[features]-belt-speed",
	},
	{
		type = "bool-setting",
		name = "guft-feature-bio-speed-changes",
		setting_type = "startup",
		default_value = true,
		order = "c[features]-bio-speed",
	},
	-- crushing is always on
	-- decomposition is always on
	{
		type = "bool-setting",
		name = "guft-feature-equipment",
		setting_type = "startup",
		default_value = true,
		order = "c[features]-equipment",
	},
	{
		type = "string-setting",
		name = "guft-feature-equipment-angel-vehicle-equipment",
		setting_type = "startup",
		default_value = "as-is",
		allowed_values = { "none", "as-is", "bob-balance" },
		order = "c[features]-equipment-angel-vehicle-equipment",
	},
	{
		type = "bool-setting",
		name = "guft-feature-equipment-player-equipment-in-vehicles",
		setting_type = "startup",
		default_value = false,
		order = "c[features]-equipment-player-equipment-in-vehicles",
	},
	-- fast-replace is always on
	{
		type = "bool-setting",
		name = "guft-feature-hand-craft-filter",
		setting_type = "startup",
		default_value = false,
		order = "c[features]-hand-craft-filter",
	},
	-- lab-unifier is always on
	{
		type = "bool-setting",
		name = "guft-feature-magic-barrels",
		setting_type = "startup",
		default_value = false,
		order = "c[features]-magic-barrels",
	},
	{
		type = "bool-setting",
		name = "guft-feature-miner-area",
		setting_type = "startup",
		default_value = false,
		order = "c[features]-miner-area",
	},
	{
		type = "bool-setting",
		name = "guft-feature-ore-control",
		setting_type = "startup",
		default_value = false,
		order = "c[features]-ore-control",
	},
	{
		type = "double-setting",
		name = "guft-feature-ore-control-rarity",
		setting_type = "startup",
		minimum_value = 0.01,
		default_value = 1,
		maximum_value = 10,
		order = "c[features]-ore-control-rarity",
	},
	{
		type = "bool-setting",
		name = "guft-feature-ore-control-start-base-coal",
		setting_type = "startup",
		default_value = true,
		order = "c[features]-ore-control-start-base-coal",
	},
	{
		type = "bool-setting",
		name = "guft-feature-ore-control-start-base-stone",
		setting_type = "startup",
		default_value = true,
		order = "c[features]-ore-control-start-base-stone",
	},
	{
		type = "bool-setting",
		name = "guft-feature-ore-control-start-base-metals",
		setting_type = "startup",
		default_value = true,
		order = "c[features]-ore-control-start-base-metals",
	},
	{
		type = "bool-setting",
		name = "guft-feature-ore-control-start-angel",
		setting_type = "startup",
		default_value = true,
		order = "c[features]-ore-control-start-angel",
	},
	{
		type = "bool-setting",
		name = "guft-feature-ore-control-start-bob",
		setting_type = "startup",
		default_value = true,
		order = "c[features]-ore-control-start-bob",
	},
	{
		type = "bool-setting",
		name = "guft-feature-ore-control-start-omni",
		setting_type = "startup",
		default_value = true,
		order = "c[features]-ore-control-start-omni",
	},
	{
		type = "bool-setting",
		name = "guft-feature-ore-control-start-py",
		setting_type = "startup",
		default_value = true,
		order = "c[features]-ore-control-start-py",
	},
	{
		type = "bool-setting",
		name = "guft-feature-ore-control-start-yuoki",
		setting_type = "startup",
		default_value = true,
		order = "c[features]-ore-control-start-yuoki",
	},
	{
		type = "bool-setting",
		name = "guft-feature-productivity",
		setting_type = "startup",
		default_value = true,
		order = "c[features]-productivity",
	},
	{
		type = "bool-setting",
		name = "guft-feature-radar-range",
		setting_type = "startup",
		default_value = true,
		order = "c[features]-radar-range",
	},
	{
		type = "bool-setting",
		name = "guft-feature-unicomp",
		setting_type = "startup",
		default_value = false,
		order = "c[features]-unicomp",
	},

	{
		type = "bool-setting",
		name = "guft-balance-swap-angel-gems-crystals",
		setting_type = "startup",
		default_value = true,
		order = "d[balance]-angel-module-gems",
	},
	{
		type = "bool-setting",
		name = "guft-balance-aai-cost",
		setting_type = "startup",
		default_value = true,
		order = "d[balance]-aai-cost",
	},
	{
		type = "bool-setting",
		name = "guft-balance-bob-equipment-no-artifacts",
		setting_type = "startup",
		default_value = false,
		order = "d[balance]-bob-equipment-artifacts",
	},
	{
		type = "double-setting",
		name = "guft-balance-angel-ore-sort-multiplier",
		setting_type = "startup",
		default_value = 1,
		allowed_values = {0.5, 1, 2, 3, 4},
		order = "d[balance]-angel-ore-sort-multiplier",
	},

	{
		type = "bool-setting",
		name = "guft-misc-fragile-burners",
		setting_type = "startup",
		default_value = false,
		order = "e[misc]-fragile-burners",
	},
	{
		type = "bool-setting",
		name = "guft-misc-early-logistics",
		setting_type = "startup",
		default_value = false,
		order = "e[misc]-early-logistics",
	},
	{
		type = "bool-setting",
		name = "guft-misc-no-omnic-water",
		setting_type = "startup",
		default_value = false,
		order = "e[misc]-no-omnic-water",
	},
	{
		type = "bool-setting",
		name = "guft-misc-yuoki-trains-chemical-fuel",
		setting_type = "startup",
		default_value = false,
		order = "e[misc]-yuoki-trains-chemical-fuel",
	},
	{
		type = "bool-setting",
		name = "guft-misc-angel-basic-smelting",
		setting_type = "startup",
		default_value = false,
		order = "e[misc]-angel-basic-smelting",
	},

	{
		type = "bool-setting",
		name = "guft-mores-enable",
		setting_type = "startup",
		default_value = false,
		order = "f[mores]",
	},

	--
	{
		type = "int-setting",
		name = "guft-debug-logging",
		setting_type = "startup",
		hidden = true,
		default_value = 0,
		allowed_values = { 0, 1, 2 },
		order = "z[debug]-log-verbosity",
	},
})