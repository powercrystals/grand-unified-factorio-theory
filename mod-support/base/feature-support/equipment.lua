local featuredata =
{
	equipment =
	{
		{ type = "solar-panel-equipment", name = "solar-panel-equipment", chassis = { "player" } },

		{ type = "generator-equipment", name = "fusion-reactor-equipment", chassis = { "player" }, minimum_tier = 2 },

		{ type = "battery-equipment", name = "battery-equipment", chassis = { "player" } },
		{ type = "battery-equipment", name = "battery-mk2-equipment", chassis = { "player" }, minimum_tier = 2 },

		{ type = "belt-immunity-equipment", name = "belt-immunity-equipment", chassis = { "player" }, engines = { "powered" } },

		{ type = "movement-bonus-equipment", name = "exoskeleton-equipment", chassis = { "player" }, engines = { "powered" } },

		{ type = "roboport-equipment", name = "personal-roboport-equipment", chassis = { "player" }, roles = { "cargo", "support"} },
		{ type = "roboport-equipment", name = "personal-roboport-mk2-equipment", chassis = { "player" }, roles = { "cargo", "support"}, minimum_tier = 2 },

		{ type = "night-vision-equipment", name = "night-vision-equipment", chassis = { "player" } },

		{ type = "energy-shield-equipment", name = "energy-shield-equipment", chassis = { "player" } },
		{ type = "energy-shield-equipment", name = "energy-shield-mk2-equipment", chassis = { "player" }, minimum_tier = 2 },

		{ type = "active-defense-equipment", name = "personal-laser-defense-equipment", chassis = { "player" } },
		{ type = "active-defense-equipment", name = "discharge-defense-equipment", chassis = { "player" } },
	},
	armors =
	{
		{ name = "modular-armor", role = "cargo", tier = 1 },
		{ name = "power-armor", role = "combat", tier = 2 },
		{ name = "power-armor-mk2", role = "universal", tier = 3 }
	},
	vehicles =
	{
		{ type = "car", name = "car", engine = "powered", role = "support", chassis = "car", tier = 1 },
		{ type = "car", name = "tank", engine = "powered", role = "combat", chassis = "car", tier = 3 },
		{ type = "spider-vehicle", name = "spidertron", engine = "powered", role = "universal", chassis = "spider", tier = 5 },
		{ type = "locomotive", name = "locomotive", engine = "powered", role = "cargo", chassis = "train", tier = 1 },
		{ type = "cargo-wagon", name = "cargo-wagon", engine = "unpowered", role = "cargo", chassis = "train", tier = 1 },
		{ type = "fluid-wagon", name = "fluid-wagon", engine = "unpowered", role = "cargo", chassis = "train", tier = 1 },
		{ type = "artillery-wagon", name = "artillery-wagon", engine = "unpowered", role = "combat", chassis = "train", tier = 2 },
	}
}

return featuredata