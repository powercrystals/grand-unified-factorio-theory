-- productivity modules are by default only allowed for specific recipes
-- the base game defines this as "intermediate" recipes, which is somewhat reasonably defined there but only gets worse as other mods pile in on top
-- many mods just don't bother listing recipes as productivity-capable when they're clearly intermediate
-- some (Yuoki) do it in a way that doesn't work correctly
-- then there's mods with specific variants of productivity modules:
--   angel has "agricultural" modules
--   248k has 248k-specific modules
-- so this has modules and recipes (and categories) registered with "types", which are one of:
--   default: everything not covered below
--   agricultural: angel's agricultural modules and biological processes
--   248k: 248k's modules
-- modules not registered as non-default that provide productivity are treated as default
-- recipes/categories not including a types array will be treated as default only

local contentlist = require("lib.contentlist")
local featuredata = contentlist.execute_feature_data("productivity")
-- expected: table of:
-- "modules": { "type", "name" }
-- "categories": { "name", "types" : { string } }
-- "recipes": { "name", "types" : { string } }

local modules = {}
local recipes = {}
local categories = {}

modules["default"] = {}

if settings.startup["guft-feature-productivity"].value then
	for _, mod in pairs(featuredata) do
		for _, module in pairs(mod.modules or {}) do
			if not modules[module.type] then
				modules[module.type] = {}
			end
			modules[module.type][module.name] = true
		end

		for _, recipe in pairs(mod.recipes or {}) do
			recipes[recipe.name] = recipe.types or { "default" }
		end

		for _, category in pairs(mod.categories or {}) do
			categories[category.name] = category.types or { "default" }
		end
	end

	for _, module in pairs(data.raw.module) do
		local found = false
		if module.limitation and module.effect.productivity then
			for type, type_modules in pairs(modules) do
				if type_modules[module.name] then
					found = true
					break
				end
			end

			if not found then
				modules["default"][module.name] = true
			end
		end
	end

	for _, recipe in pairs(data.raw.recipe) do
		if categories[recipe.category] then
			for _, type in pairs(categories[recipe.category]) do
				for module, _ in pairs(modules[type]) do
					if data.raw["module"][module] and data.raw["module"][module].limitation then
						table.insert(data.raw["module"][module].limitation, recipe.name)
					end
				end
			end
		end
		if recipes[recipe.name] then
			for _, type in pairs(recipes[recipe.name]) do
				for module, _ in pairs(modules[type]) do
					if data.raw["module"][module] and data.raw["module"][module].limitation then
						table.insert(data.raw["module"][module].limitation, recipe.name)
					end
				end
			end
		end
	end
end