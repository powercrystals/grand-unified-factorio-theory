if mods["angelssmelting"] and mods["Yuoki"] then
	data:extend(
	{
		-- Durotal
		{
			type = "technology",
			name = "angels-durotal-smelting-1",
			icon_size = 128,
			icon = "__grand-unified-factorio-theory__/graphics/technology/smelting-durotal.png",
			effects =
			{
				{ type = "unlock-recipe", recipe = "durotal-ore-smelting" },
				{ type = "unlock-recipe", recipe = "molten-durotal-smelting" },
				{ type = "unlock-recipe", recipe = "angels-plate-durotal" },
				{ type = "unlock-recipe", recipe = "angels-refined-durotal" }
			},
			prerequisites = { "angels-metallurgy-1" },
			unit =
			{
				count = 100,
				ingredients =
				{
					{ "automation-science-pack", 1 },
				},
				time = 30,
			},
			order = "c-y-d",
		},
		{
			type = "technology",
			name = "angels-durotal-smelting-2",
			icon_size = 128,
			icon = "__grand-unified-factorio-theory__/graphics/technology/smelting-durotal.png",
			effects =
			{
				{ type = "unlock-recipe", recipe = "durotal-ore-processing" },
				{ type = "unlock-recipe", recipe = "processed-durotal-smelting" }
			},
			prerequisites = { "angels-durotal-smelting-1", "angels-coal-processing-2" },
			unit =
			{
				count = 150,
				ingredients =
				{
					{ "automation-science-pack", 1 },
					{ "logistic-science-pack", 1 },
				},
				time = 30,
			},
			order = "c-y-d",
		},
		{
			type = "technology",
			name = "angels-durotal-smelting-3",
			icon_size = 128,
			icon = "__grand-unified-factorio-theory__/graphics/technology/smelting-durotal.png",
			effects =
			{
				{ type = "unlock-recipe", recipe = "durotal-processed-processing" },
				{ type = "unlock-recipe", recipe = "pellet-durotal-smelting" }
			},
			prerequisites = { "angels-durotal-smelting-2" },
			unit =
			{
				count = 200,
				ingredients =
				{
					{ "automation-science-pack", 1 },
					{ "logistic-science-pack", 1 },
					{ "chemical-science-pack", 1 },
				},
				time = 30,
			},
			order = "c-y-d",
		},
		 -- Nuatreel
		{
			type = "technology",
			name = "angels-nuatreel-smelting-1",
			icon_size = 128,
			icon = "__grand-unified-factorio-theory__/graphics/technology/smelting-nuatreel.png",
			effects =
			{
				{ type = "unlock-recipe", recipe = "nuatreel-ore-smelting" },
				{ type = "unlock-recipe", recipe = "molten-nuatreel-smelting" },
				{ type = "unlock-recipe", recipe = "angels-plate-nuatreel" },
				{ type = "unlock-recipe", recipe = "angels-refined-nuatreel" }
			},
			prerequisites = { "angels-metallurgy-1" },
			unit =
			{
				count = 100,
				ingredients =
				{
					{ "automation-science-pack", 1 },
				},
				time = 30,
			},
			order = "c-y-n",
		},
		{
			type = "technology",
			name = "angels-nuatreel-smelting-2",
			icon_size = 128,
			icon = "__grand-unified-factorio-theory__/graphics/technology/smelting-nuatreel.png",
			effects =
			{
				{ type = "unlock-recipe", recipe = "nuatreel-ore-processing" },
				{ type = "unlock-recipe", recipe = "processed-nuatreel-smelting" }
			},
			prerequisites = { "angels-nuatreel-smelting-1", "angels-coal-processing-2" },
			unit =
			{
				count = 150,
				ingredients =
				{
					{ "automation-science-pack", 1 },
					{ "logistic-science-pack", 1 },
				},
				time = 30,
			},
			order = "c-y-n",
		},
		{
			type = "technology",
			name = "angels-nuatreel-smelting-3",
			icon_size = 128,
			icon = "__grand-unified-factorio-theory__/graphics/technology/smelting-nuatreel.png",
			effects =
			{
				{ type = "unlock-recipe", recipe = "nuatreel-processed-processing" },
				{ type = "unlock-recipe", recipe = "pellet-nuatreel-smelting" }
			},
			prerequisites = { "angels-nuatreel-smelting-2" },
			unit =
			{
				count = 200,
				ingredients =
				{
					{ "automation-science-pack", 1 },
					{ "logistic-science-pack", 1 },
					{ "chemical-science-pack", 1 },
				},
				time = 30,
			},
			order = "c-y-n",
		},
		-- H-Metal
		{
			type = "technology",
			name = "angels-hmetal-smelting-1",
			icon_size = 128,
			icon = "__grand-unified-factorio-theory__/graphics/technology/smelting-hmetal.png",
			effects =
			{
				{ type = "unlock-recipe", recipe = "molten-hmetal-smelting" },
				{ type = "unlock-recipe", recipe = "angels-plate-hmetal" }
			},
			prerequisites = { "angels-steel-smelting-1", "angels-lead-smelting-1" },
			unit =
			{
				count = 150,
				ingredients =
				{
					{ "automation-science-pack", 1 },
					{ "logistic-science-pack", 1 },
				},
				time = 30,
			},
			order = "c-y-h",
		},
		-- Rich Dust/Orange Stuff
		{
			type = "technology",
			name = "angels-richdust-processing",
			icon_size = 128,
			icon = "__grand-unified-factorio-theory__/graphics/technology/mixing-richdust.png",
			effects =
			{
				{ type = "unlock-recipe", recipe = "rich-dust-mixing" }
			},
			prerequisites = { "powder-metallurgy-1", },
			unit =
			{
				count = 150,
				ingredients =
				{
					{ "automation-science-pack", 1 },
					{ "logistic-science-pack", 1 },
				},
				time = 30,
			},
			order = "c-y-o",
		},
		{
			type = "technology",
			name = "angels-orangestuff-smelting",
			icon_size = 128,
			icon = "__grand-unified-factorio-theory__/graphics/technology/smelting-orangestuff.png",
			effects =
			{
				{ type = "unlock-recipe", recipe = "rich-dust-smelting" }
			},
			prerequisites = { "angels-richdust-processing", },
			unit =
			{
				count = 150,
				ingredients =
				{
					{ "automation-science-pack", 1 },
					{ "logistic-science-pack", 1 },
				},
				time = 30,
			},
			order = "c-y-o",
		},
	})
end