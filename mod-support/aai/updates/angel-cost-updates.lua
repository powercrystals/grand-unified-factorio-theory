if settings.startup["guft-balance-aai-cost"].value and data.raw["item"]["basic-circuit-board"] then
	for _, recipe in pairs(data.raw["recipe"]) do
		if recipe.subgroup == "ai-vehicles" then
			guftlib.recipe.item_replace(recipe, "electronic-circuit", "basic-circuit-board")
		end
	end

	-- hauler: tier 1
	if data.raw["recipe"]["vehicle-hauler"] then
		data.raw["recipe"]["vehicle-hauler"].energy_required = 10
		data.raw["recipe"]["vehicle-hauler"].normal.ingredients =
		{
			{ type="item", name="iron-plate", amount=20 },
			{ type="item", name="iron-gear-wheel", amount=20 },
			{ type="item", name="iron-chest", amount=10 },
		}
		data.raw["recipe"]["vehicle-hauler"].expensive.ingredients =
		{
			{ type="item", name="iron-plate", amount=40 },
			{ type="item", name="iron-gear-wheel", amount=40 },
			{ type="item", name="iron-chest", amount=20 },
		}

		data.raw["technology"]["basic-vehicles"].unit =
		{
			count = 10,
			ingredients =
			{
				{"automation-science-pack", 1},
			},
			time = 15
		}

		data.raw["car"]["vehicle-hauler"].equipment_grid = "bob-tank"
	end

	-- chaingunner: tier 2
	if data.raw["recipe"]["vehicle-chaingunner"] then
		data.raw["recipe"]["vehicle-chaingunner"].energy_required = 20
		data.raw["recipe"]["vehicle-chaingunner"].normal.ingredients =
		{
			{ type="item", name="steel-plate", amount=20 },
			{ type="item", name="steel-gear-wheel", amount=20 },
			{ type="item", name="electronic-circuit", amount=10 },
			{ type="item", name="engine-unit", amount=10 },
			{ type="item", name="gun-turret", amount=1 },
		}
		data.raw["recipe"]["vehicle-chaingunner"].expensive.ingredients =
		{
			{ type="item", name="steel-plate", amount=40 },
			{ type="item", name="steel-gear-wheel", amount=40 },
			{ type="item", name="electronic-circuit", amount=20 },
			{ type="item", name="engine-unit", amount=20 },
			{ type="item", name="gun-turret", amount=1 },
		}

		data.raw["technology"]["vehicle-chaingunner"].unit =
		{
			count = 50,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 15
		}

		data.raw["car"]["vehicle-chaingunner"].equipment_grid = "bob-tank"
	end

	-- warden: tier 3
	if data.raw["recipe"]["vehicle-warden"] then
		data.raw["recipe"]["vehicle-warden"].energy_required = 30
		data.raw["recipe"]["vehicle-warden"].normal.ingredients =
		{
			{ type="item", name="cobalt-steel-alloy", amount=50 },
			{ type="item", name="cobalt-steel-gear-wheel", amount=20 },
			{ type="item", name="cobalt-steel-bearing", amount=20 },
			{ type="item", name="steel-chest", amount=5 },
			{ type="item", name="advanced-circuit", amount=20 },
			{ type="item", name="electric-engine-unit", amount=10 },
			{ type="item", name="radar", amount=1 },
		}
		data.raw["recipe"]["vehicle-warden"].expensive.ingredients =
		{
			{ type="item", name="cobalt-steel-alloy", amount=100 },
			{ type="item", name="cobalt-steel-gear-wheel", amount=40 },
			{ type="item", name="cobalt-steel-bearing", amount=40 },
			{ type="item", name="steel-chest", amount=5 },
			{ type="item", name="advanced-circuit", amount=40 },
			{ type="item", name="electric-engine-unit", amount=20 },
			{ type="item", name="radar", amount=1 },
		}

		data.raw["technology"]["vehicle-warden"].unit =
		{
			count = 100,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		}

		data.raw["car"]["vehicle-warden"].equipment_grid = "bob-tank-3"
	end

	-- flame tank: tier 3
	if data.raw["recipe"]["vehicle-flame-tank"] then
		data.raw["recipe"]["vehicle-flame-tank"].energy_required = 30
		data.raw["recipe"]["vehicle-flame-tank"].normal.ingredients =
		{
			{ type="item", name="cobalt-steel-alloy", amount=80 },
			{ type="item", name="cobalt-steel-gear-wheel", amount=20 },
			{ type="item", name="cobalt-steel-bearing", amount=20 },
			{ type="item", name="advanced-circuit", amount=20 },
			{ type="item", name="electric-engine-unit", amount=10 },
			{ type="item", name="flamethrower-turret", amount=1 },
		}
		data.raw["recipe"]["vehicle-flame-tank"].expensive.ingredients =
		{
			{ type="item", name="cobalt-steel-alloy", amount=160 },
			{ type="item", name="cobalt-steel-gear-wheel", amount=40 },
			{ type="item", name="cobalt-steel-bearing", amount=40 },
			{ type="item", name="advanced-circuit", amount=40 },
			{ type="item", name="electric-engine-unit", amount=20 },
			{ type="item", name="flamethrower-turret", amount=1 },
		}

		data.raw["technology"]["vehicle-flame-tank"].unit =
		{
			count = 50,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		}

		data.raw["car"]["vehicle-flame-tank"].equipment_grid = "bob-tank-2"
	end

	-- flame tumbler: tier 3
	if data.raw["recipe"]["vehicle-flame-tumbler"] then
		data.raw["recipe"]["vehicle-flame-tumbler"].energy_required = 30
		data.raw["recipe"]["vehicle-flame-tumbler"].ingredients =
		{
			{ type="item", name="cobalt-steel-alloy", amount=30 },
			{ type="item", name="cobalt-steel-gear-wheel", amount=20 },
			{ type="item", name="cobalt-steel-bearing", amount=20 },
			{ type="item", name="advanced-circuit", amount=20 },
			{ type="item", name="electric-engine-unit", amount=30 },
			{ type="item", name="flamethrower-turret", amount=1 },
		}

		data.raw["technology"]["vehicle-flame-tumbler"].unit =
		{
			count = 50,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		}

		data.raw["car"]["vehicle-flame-tumbler"].equipment_grid = "bob-tank-2"
	end

	-- laser tank: tier 4
	if data.raw["recipe"]["vehicle-laser-tank"] then
		data.raw["recipe"]["vehicle-laser-tank"].energy_required = 45
		data.raw["recipe"]["vehicle-laser-tank"].ingredients =
		{
			{ type="item", name="titanium-plate", amount=80 },
			{ type="item", name="titanium-gear-wheel", amount=20 },
			{ type="item", name="titanium-bearing", amount=20 },
			{ type="item", name="processing-unit", amount=20 },
			{ type="item", name="electric-engine-unit", amount=10 },
			{ type="item", name="laser-turret", amount=1 },
		}

		data.raw["technology"]["vehicle-laser-tank"].unit =
		{
			count = 250,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		}

		data.raw["car"]["vehicle-laser-tank"].equipment_grid = "bob-tank-3"
	end

	-- miners: tiers 1-5
	-- if one is present, all will be
	if data.raw["recipe"]["vehicle-miner"] then
		-- miner mk1
		data.raw["recipe"]["vehicle-miner"].energy_required = 15
		data.raw["recipe"]["vehicle-miner"].normal.ingredients =
		{
			{ type="item", name="iron-plate", amount=20 },
			{ type="item", name="iron-gear-wheel", amount=20 },
			{ type="item", name="iron-chest", amount=10 },
			{ type="item", name="electric-mining-drill", amount=1 },
		}
		data.raw["recipe"]["vehicle-miner"].expensive.ingredients =
		{
			{ type="item", name="iron-plate", amount=40 },
			{ type="item", name="iron-gear-wheel", amount=40 },
			{ type="item", name="iron-chest", amount=20 },
			{ type="item", name="electric-mining-drill", amount=1 },
		}

		data.raw["technology"]["vehicle-miner"].unit =
		{
			count = 30,
			ingredients =
			{
				{"automation-science-pack", 1},
			},
			time = 15
		}

		data.raw["car"]["vehicle-miner"].equipment_grid = "bob-tank"
		
		-- miner mk2
		data.raw["recipe"]["vehicle-miner-mk2"].energy_required = 30
		data.raw["recipe"]["vehicle-miner-mk2"].normal.ingredients =
		{
			{ type="item", name="steel-plate", amount=20 },
			{ type="item", name="steel-gear-wheel", amount=20 },
			{ type="item", name="electronic-circuit", amount=10 },
			{ type="item", name="engine-unit", amount=10 },
			{ type="item", name="bob-mining-drill-1", amount=1 },
		}
		data.raw["recipe"]["vehicle-miner-mk2"].expensive.ingredients =
		{
			{ type="item", name="steel-plate", amount=40 },
			{ type="item", name="steel-gear-wheel", amount=40 },
			{ type="item", name="electronic-circuit", amount=20 },
			{ type="item", name="engine-unit", amount=20 },
			{ type="item", name="bob-mining-drill-1", amount=1 },
		}

		data.raw["technology"]["vehicle-miner-2"].unit =
		{
			count = 50,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 15
		}

		data.raw["car"]["vehicle-miner-mk2"].equipment_grid = "bob-tank"
		
		-- miner mk3
		data.raw["recipe"]["vehicle-miner-mk3"].energy_required = 60
		data.raw["recipe"]["vehicle-miner-mk3"].normal.ingredients =
		{
			{ type="item", name="cobalt-steel-alloy", amount=20 },
			{ type="item", name="cobalt-steel-gear-wheel", amount=20 },
			{ type="item", name="cobalt-steel-bearing", amount=20 },
			{ type="item", name="advanced-circuit", amount=10 },
			{ type="item", name="electric-engine-unit", amount=10 },
			{ type="item", name="bob-mining-drill-2", amount=1 },
		}
		data.raw["recipe"]["vehicle-miner-mk3"].expensive.ingredients =
		{
			{ type="item", name="cobalt-steel-alloy", amount=40 },
			{ type="item", name="cobalt-steel-gear-wheel", amount=40 },
			{ type="item", name="cobalt-steel-bearing", amount=40 },
			{ type="item", name="advanced-circuit", amount=20 },
			{ type="item", name="electric-engine-unit", amount=20 },
			{ type="item", name="bob-mining-drill-2", amount=1 },
		}

		data.raw["technology"]["vehicle-miner-3"].unit =
		{
			count = 100,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30
		}

		data.raw["car"]["vehicle-miner-mk3"].equipment_grid = "bob-tank-2"
		
		-- miner mk4
		data.raw["recipe"]["vehicle-miner-mk4"].energy_required = 90
		data.raw["recipe"]["vehicle-miner-mk4"].normal.ingredients =
		{
			{ type="item", name="titanium-plate", amount=20 },
			{ type="item", name="titanium-gear-wheel", amount=20 },
			{ type="item", name="titanium-bearing", amount=20 },
			{ type="item", name="processing-unit", amount=10 },
			{ type="item", name="electric-engine-unit", amount=10 },
			{ type="item", name="bob-mining-drill-3", amount=1 },
		}
		data.raw["recipe"]["vehicle-miner-mk4"].expensive.ingredients =
		{
			{ type="item", name="titanium-plate", amount=40 },
			{ type="item", name="titanium-gear-wheel", amount=40 },
			{ type="item", name="titanium-bearing", amount=40 },
			{ type="item", name="processing-unit", amount=20 },
			{ type="item", name="electric-engine-unit", amount=20 },
			{ type="item", name="bob-mining-drill-3", amount=1 },
		}

		data.raw["technology"]["vehicle-miner-4"].unit =
		{
			count = 250,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30
		}

		data.raw["car"]["vehicle-miner-mk4"].equipment_grid = "bob-tank-2"
		
		-- miner mk5
		data.raw["recipe"]["vehicle-miner-mk5"].energy_required = 120
		data.raw["recipe"]["vehicle-miner-mk5"].normal.ingredients =
		{
			{ type="item", name="nitinol-alloy", amount=20 },
			{ type="item", name="nitinol-gear-wheel", amount=20 },
			{ type="item", name="nitinol-bearing", amount=20 },
			{ type="item", name="advanced-processing-unit", amount=10 },
			{ type="item", name="electric-engine-unit", amount=10 },
			{ type="item", name="bob-mining-drill-4", amount=1 },
		}
		data.raw["recipe"]["vehicle-miner-mk5"].expensive.ingredients =
		{
			{ type="item", name="nitinol-alloy", amount=40 },
			{ type="item", name="nitinol-gear-wheel", amount=40 },
			{ type="item", name="nitinol-bearing", amount=40 },
			{ type="item", name="advanced-processing-unit", amount=20 },
			{ type="item", name="electric-engine-unit", amount=20 },
			{ type="item", name="bob-mining-drill-4", amount=1 },
		}

		data.raw["technology"]["vehicle-miner-5"].unit =
		{
			count = 500,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
			},
			time = 60
		}

		data.raw["car"]["vehicle-miner-mk5"].equipment_grid = "bob-tank-3"
	end
end