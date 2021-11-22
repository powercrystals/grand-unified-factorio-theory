return
{
	equipment =
	{
		-- player equipment
		{ type = "energy-shield-equipment", name = "energy-shield-mk3-equipment", chassis = { "player" }, roles = { "support", "combat" }, minimum_tier = 3, },
		{ type = "energy-shield-equipment", name = "energy-shield-mk4-equipment", chassis = { "player" }, roles = { "support", "combat" }, minimum_tier = 4, },
		{ type = "energy-shield-equipment", name = "energy-shield-mk5-equipment", chassis = { "player" }, roles = { "support", "combat" }, minimum_tier = 5, },
		{ type = "energy-shield-equipment", name = "energy-shield-mk6-equipment", chassis = { "player" }, roles = { "support", "combat" }, minimum_tier = 6, },

		{ type = "battery-equipment", name = "battery-mk3-equipment", chassis = { "player" }, minimum_tier = 3, },
		{ type = "battery-equipment", name = "battery-mk4-equipment", chassis = { "player" }, minimum_tier = 4, },
		{ type = "battery-equipment", name = "battery-mk5-equipment", chassis = { "player" }, minimum_tier = 5, },
		{ type = "battery-equipment", name = "battery-mk6-equipment", chassis = { "player" }, minimum_tier = 6, },

		{ type = "generator-equipment", name = "fusion-reactor-equipment-2", chassis = { "player" }, roles = { "support", "combat" }, minimum_tier = 3, },
		{ type = "generator-equipment", name = "fusion-reactor-equipment-3", chassis = { "player" }, roles = { "support", "combat" }, minimum_tier = 4, },
		{ type = "generator-equipment", name = "fusion-reactor-equipment-4", chassis = { "player" }, roles = { "support" }, minimum_tier = 5, },

		{ type = "night-vision-equipment", name = "night-vision-equipment-2", chassis = { "player" } },
		{ type = "night-vision-equipment", name = "night-vision-equipment-3", chassis = { "player" } },

		{ type = "solar-panel-equipment", name = "solar-panel-equipment-2", chassis = { "player" }, minimum_tier = 2, },
		{ type = "solar-panel-equipment", name = "solar-panel-equipment-3", chassis = { "player" }, minimum_tier = 3, },
		{ type = "solar-panel-equipment", name = "solar-panel-equipment-4", chassis = { "player" }, minimum_tier = 4, },

		{ type = "active-defense-equipment", name = "personal-laser-defense-equipment-2", chassis = { "player" }, roles = { "support", "combat" }, minimum_tier = 2, },
		{ type = "active-defense-equipment", name = "personal-laser-defense-equipment-3", chassis = { "player" }, roles = { "combat" }, minimum_tier = 3, },
		{ type = "active-defense-equipment", name = "personal-laser-defense-equipment-4", chassis = { "player" }, roles = { "combat" }, minimum_tier = 4, },
		{ type = "active-defense-equipment", name = "personal-laser-defense-equipment-5", chassis = { "player" }, roles = { "combat" }, minimum_tier = 5, },
		{ type = "active-defense-equipment", name = "personal-laser-defense-equipment-6", chassis = { "player" }, roles = { "combat" }, minimum_tier = 6, },

		{ type = "movement-bonus-equipment", name = "exoskeleton-equipment-2", chassis = { "player" }, engines = { "powered" }, minimum_tier = 3, },
		{ type = "movement-bonus-equipment", name = "exoskeleton-equipment-3", chassis = { "player" }, engines = { "powered" }, minimum_tier = 5, },

		{ type = "roboport-equipment", name = "personal-roboport-antenna-equipment", chassis = { "player" }, roles = { "cargo", "support" } },
		{ type = "roboport-equipment", name = "personal-roboport-antenna-equipment-2", chassis = { "player" }, roles = { "cargo", "support" }, minimum_tier = 2, },
		{ type = "roboport-equipment", name = "personal-roboport-antenna-equipment-3", chassis = { "player" }, roles = { "cargo" }, minimum_tier = 3, },
		{ type = "roboport-equipment", name = "personal-roboport-antenna-equipment-4", chassis = { "player" }, roles = { "cargo" }, minimum_tier = 4, },

		{ type = "roboport-equipment", name = "personal-roboport-chargepad-equipment", chassis = { "player" }, roles = { "cargo", "support" } },
		{ type = "roboport-equipment", name = "personal-roboport-chargepad-equipment-2", chassis = { "player" }, roles = { "cargo", "support" }, minimum_tier = 2, },
		{ type = "roboport-equipment", name = "personal-roboport-chargepad-equipment-3", chassis = { "player" }, roles = { "cargo" }, minimum_tier = 3, },
		{ type = "roboport-equipment", name = "personal-roboport-chargepad-equipment-4", chassis = { "player" }, roles = { "cargo" }, minimum_tier = 4, },

		{ type = "roboport-equipment", name = "personal-roboport-robot-equipment", chassis = { "player" }, roles = { "cargo", "support" } },
		{ type = "roboport-equipment", name = "personal-roboport-robot-equipment-2", chassis = { "player" }, roles = { "cargo", "support" }, minimum_tier = 2, },
		{ type = "roboport-equipment", name = "personal-roboport-robot-equipment-3", chassis = { "player" }, roles = { "cargo" }, minimum_tier = 3, },
		{ type = "roboport-equipment", name = "personal-roboport-robot-equipment-4", chassis = { "player" }, roles = { "cargo" }, minimum_tier = 4, },

		{ type = "roboport-equipment", name = "personal-roboport-mk3-equipment", chassis = { "player" }, roles = { "cargo" }, minimum_tier = 3, },
		{ type = "roboport-equipment", name = "personal-roboport-mk4-equipment", chassis = { "player" }, roles = { "cargo" }, minimum_tier = 4, },

		{ type = "active-defense-equipment", name = "combat-robot-dispenser-equipment", roles = { "combat" } },

		-- vehicle equipment
		{ type = "battery-equipment", name = "vehicle-battery-1", },
		{ type = "battery-equipment", name = "vehicle-battery-2", minimum_tier = 2, },
		{ type = "battery-equipment", name = "vehicle-battery-3", minimum_tier = 3, },
		{ type = "battery-equipment", name = "vehicle-battery-4", minimum_tier = 4, },
		{ type = "battery-equipment", name = "vehicle-battery-5", minimum_tier = 5, },
		{ type = "battery-equipment", name = "vehicle-battery-6", minimum_tier = 6, },

		{ type = "belt-immunity-equipment", name = "vehicle-belt-immunity-equipment", chassis = { "car", "spider" } },

		{ type = "generator-equipment", name = "vehicle-fusion-cell-1", },
		{ type = "generator-equipment", name = "vehicle-fusion-cell-2", minimum_tier = 2 },
		{ type = "generator-equipment", name = "vehicle-fusion-cell-3", roles = { "support", "combat" }, minimum_tier = 3, },
		{ type = "generator-equipment", name = "vehicle-fusion-cell-4", roles = { "support", "combat" }, minimum_tier = 4, },
		{ type = "generator-equipment", name = "vehicle-fusion-cell-5", roles = { "support", "combat" }, minimum_tier = 5, },
		{ type = "generator-equipment", name = "vehicle-fusion-cell-6", roles = { "support", "combat" }, minimum_tier = 6, },

		{ type = "generator-equipment", name = "vehicle-fusion-reactor-1", },
		{ type = "generator-equipment", name = "vehicle-fusion-reactor-2", minimum_tier = 2 },
		{ type = "generator-equipment", name = "vehicle-fusion-reactor-3", roles = { "support", "combat" }, minimum_tier = 3, },
		{ type = "generator-equipment", name = "vehicle-fusion-reactor-4", roles = { "support", "combat" }, minimum_tier = 4, },
		{ type = "generator-equipment", name = "vehicle-fusion-reactor-5", roles = { "support" }, minimum_tier = 5, },
		{ type = "generator-equipment", name = "vehicle-fusion-reactor-6", roles = { "support" }, minimum_tier = 6, },

		{ type = "active-defense-equipment", name = "vehicle-laser-defense-1", roles = { "support", "combat" } },
		{ type = "active-defense-equipment", name = "vehicle-laser-defense-2", roles = { "support", "combat" }, minimum_tier = 2 },
		{ type = "active-defense-equipment", name = "vehicle-laser-defense-3", roles = { "combat" }, minimum_tier = 3, },
		{ type = "active-defense-equipment", name = "vehicle-laser-defense-4", roles = { "combat" }, minimum_tier = 4, },
		{ type = "active-defense-equipment", name = "vehicle-laser-defense-5", roles = { "combat" }, minimum_tier = 5, },
		{ type = "active-defense-equipment", name = "vehicle-laser-defense-6", roles = { "combat" }, minimum_tier = 6, },

		{ type = "active-defense-equipment", name = "vehicle-big-turret-1", roles = { "support" } },
		{ type = "active-defense-equipment", name = "vehicle-big-turret-2", roles = { "support" }, minimum_tier = 2 },
		{ type = "active-defense-equipment", name = "vehicle-big-turret-3", roles = { "support" }, minimum_tier = 3, },
		{ type = "active-defense-equipment", name = "vehicle-big-turret-4", roles = { "support" }, minimum_tier = 4, },
		{ type = "active-defense-equipment", name = "vehicle-big-turret-5", roles = { "support" }, minimum_tier = 5, },
		{ type = "active-defense-equipment", name = "vehicle-big-turret-6", roles = { "support" }, minimum_tier = 6, },

		{ type = "roboport-equipment", name = "vehicle-roboport-antenna-equipment", roles = { "cargo", "support" } },
		{ type = "roboport-equipment", name = "vehicle-roboport-antenna-equipment-2", roles = { "cargo", "support" }, minimum_tier = 2, },
		{ type = "roboport-equipment", name = "vehicle-roboport-antenna-equipment-3", roles = { "cargo" }, minimum_tier = 3, },
		{ type = "roboport-equipment", name = "vehicle-roboport-antenna-equipment-4", roles = { "cargo" }, minimum_tier = 4, },

		{ type = "roboport-equipment", name = "vehicle-roboport-chargepad-equipment", roles = { "cargo", "support" } },
		{ type = "roboport-equipment", name = "vehicle-roboport-chargepad-equipment-2", roles = { "cargo", "support" }, minimum_tier = 2, },
		{ type = "roboport-equipment", name = "vehicle-roboport-chargepad-equipment-3", roles = { "cargo" }, minimum_tier = 3, },
		{ type = "roboport-equipment", name = "vehicle-roboport-chargepad-equipment-4", roles = { "cargo" }, minimum_tier = 4, },

		{ type = "roboport-equipment", name = "vehicle-roboport-robot-equipment", roles = { "cargo", "support" } },
		{ type = "roboport-equipment", name = "vehicle-roboport-robot-equipment-2", roles = { "cargo", "support" }, minimum_tier = 2, },
		{ type = "roboport-equipment", name = "vehicle-roboport-robot-equipment-3", roles = { "cargo" }, minimum_tier = 3, },
		{ type = "roboport-equipment", name = "vehicle-roboport-robot-equipment-4", roles = { "cargo" }, minimum_tier = 4, },

		{ type = "roboport-equipment", name = "vehicle-roboport", roles = { "cargo", "support" } },
		{ type = "roboport-equipment", name = "vehicle-roboport-2", roles = { "cargo", "support" }, minimum_tier = 2, },
		{ type = "roboport-equipment", name = "vehicle-roboport-3", roles = { "cargo" }, minimum_tier = 3, },
		{ type = "roboport-equipment", name = "vehicle-roboport-4", roles = { "cargo" }, minimum_tier = 4, },

		{ type = "energy-shield-equipment", name = "vehicle-shield-1", },
		{ type = "energy-shield-equipment", name = "vehicle-shield-2", minimum_tier = 2, },
		{ type = "energy-shield-equipment", name = "vehicle-shield-3", roles = { "support", "combat" }, minimum_tier = 3, },
		{ type = "energy-shield-equipment", name = "vehicle-shield-4", roles = { "support", "combat" }, minimum_tier = 4, },
		{ type = "energy-shield-equipment", name = "vehicle-shield-5", roles = { "support", "combat" }, minimum_tier = 5, },
		{ type = "energy-shield-equipment", name = "vehicle-shield-6", roles = { "support", "combat" }, minimum_tier = 6, },

		{ type = "solar-panel-equipment", name = "vehicle-solar-panel-1", },
		{ type = "solar-panel-equipment", name = "vehicle-solar-panel-2", minimum_tier = 2, },
		{ type = "solar-panel-equipment", name = "vehicle-solar-panel-3", minimum_tier = 3, },
		{ type = "solar-panel-equipment", name = "vehicle-solar-panel-4", minimum_tier = 4, },
		{ type = "solar-panel-equipment", name = "vehicle-solar-panel-5", minimum_tier = 5, },
		{ type = "solar-panel-equipment", name = "vehicle-solar-panel-6", minimum_tier = 6, },

		{ type = "movement-bonus-equipment", name = "vehicle-motor", engines = { "powered" }, chassis = { "car", "train", "spider", "boat" } },
		{ type = "movement-bonus-equipment", name = "vehicle-engine", engines = { "powered" }, chassis = { "car", "train", "spider", "boat" }, minimum_tier = 3 },
	},
	armors =
	{
		{ name = "bob-power-armor-mk3", role = "universal", tier = 4 },
		{ name = "bob-power-armor-mk4", role = "universal", tier = 5 },
		{ name = "bob-power-armor-mk5", role = "universal", tier = 6 }
	},
	vehicles =
	{
		{ type = "car", name = "bob-tank-2", engine = "powered", role = "combat", chassis = "car", tier = 3 },
		{ type = "car", name = "bob-tank-3", engine = "powered", role = "combat", chassis = "car", tier = 4 },

		{ type = "spider-vehicle", name = "antron", engine = "powered", role = "cargo", chassis = "spider", tier = 3 },
		{ type = "spider-vehicle", name = "tankotron", engine = "powered", role = "combat", chassis = "spider", tier = 4 },
		{ type = "spider-vehicle", name = "logistic-spidertron", engine = "powered", role = "cargo", chassis = "spider", tier = 4 },
		{ type = "spider-vehicle", name = "heavy-spidertron", engine = "powered", role = "universal", chassis = "spider", tier = 6 },

		{ type = "locomotive", name = "bob-locomotive-2", engine = "powered", role = "cargo", chassis = "train", tier = 2 },
		{ type = "locomotive", name = "bob-locomotive-3", engine = "powered", role = "cargo", chassis = "train", tier = 3 },
		{ type = "locomotive", name = "bob-armoured-locomotive", engine = "powered", role = "cargo", chassis = "train", tier = 3 },
		{ type = "locomotive", name = "bob-armoured-locomotive-2", engine = "powered", role = "cargo", chassis = "train", tier = 4 },

		{ type = "cargo-wagon", name = "bob-cargo-wagon-2", engine = "unpowered", role = "cargo", chassis = "train", tier = 2 },
		{ type = "cargo-wagon", name = "bob-cargo-wagon-3", engine = "unpowered", role = "cargo", chassis = "train", tier = 3 },
		{ type = "cargo-wagon", name = "bob-armoured-cargo-wagon", engine = "unpowered", role = "cargo", chassis = "train", tier = 3 },
		{ type = "cargo-wagon", name = "bob-armoured-cargo-wagon-2", engine = "unpowered", role = "cargo", chassis = "train", tier = 4 },

		{ type = "fluid-wagon", name = "bob-fluid-wagon-2", engine = "unpowered", role = "cargo", chassis = "train", tier = 2 },
		{ type = "fluid-wagon", name = "bob-fluid-wagon-3", engine = "unpowered", role = "cargo", chassis = "train", tier = 3 },
		{ type = "fluid-wagon", name = "bob-armoured-fluid-wagon", engine = "unpowered", role = "cargo", chassis = "train", tier = 3 },
		{ type = "fluid-wagon", name = "bob-armoured-fluid-wagon-2", engine = "unpowered", role = "cargo", chassis = "train", tier = 4 },

		{ type = "artillery-wagon", name = "bob-artillery-wagon-2", engine = "unpowered", role = "combat", chassis = "train", tier = 3 },
		{ type = "artillery-wagon", name = "bob-artillery-wagon-3", engine = "unpowered", role = "combat", chassis = "train", tier = 4 },
	}
}