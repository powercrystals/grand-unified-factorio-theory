local featuredata = 
{
	equipment =
	{

	},
	armors =
	{

	},
	vehicles =
	{
		{ type = "car", name = "angels-cab", engine = "powered", role = "support", chassis = "car", tier = 2 },
		{ type = "car", name = "angels-crawler", engine = "powered", role = "support", chassis = "car", tier = 3 },
		
		{ type = "car", name = "angels-heavy-tank", engine = "powered", role = "combat", chassis = "car", tier = 3 },

		-- there can be 1-5 tiers of the three train types
		{ type = "locomotive", name = "crawler-locomotive", engine = "powered", role = "cargo", chassis = "train", tier = 1 },
		{ type = "locomotive", name = "crawler-locomotive-wagon", engine = "powered", role = "support", chassis = "train", tier = 1 },
		{ type = "cargo-wagon", name = "crawler-wagon", engine = "unpowered", role = "cargo", chassis = "train", tier = 1 },
		{ type = "cargo-wagon", name = "crawler-bot-wagon", engine = "unpowered", role = "cargo", chassis = "train", tier = 1 },

		{ type = "locomotive", name = "crawler-locomotive-2", engine = "powered", role = "cargo", chassis = "train", tier = 2 },
		{ type = "locomotive", name = "crawler-locomotive-wagon-2", engine = "powered", role = "support", chassis = "train", tier = 2 },
		{ type = "cargo-wagon", name = "crawler-wagon-2", engine = "unpowered", role = "cargo", chassis = "train", tier = 2 },
		{ type = "cargo-wagon", name = "crawler-bot-wagon-2", engine = "unpowered", role = "cargo", chassis = "train", tier = 2 },

		{ type = "locomotive", name = "crawler-locomotive-3", engine = "powered", role = "cargo", chassis = "train", tier = 3 },
		{ type = "locomotive", name = "crawler-locomotive-wagon-3", engine = "powered", role = "support", chassis = "train", tier = 3 },
		{ type = "cargo-wagon", name = "crawler-wagon-3", engine = "unpowered", role = "cargo", chassis = "train", tier = 3 },
		{ type = "cargo-wagon", name = "crawler-bot-wagon-3", engine = "unpowered", role = "cargo", chassis = "train", tier = 3 },

		{ type = "locomotive", name = "crawler-locomotive-4", engine = "powered", role = "cargo", chassis = "train", tier = 4 },
		{ type = "locomotive", name = "crawler-locomotive-wagon-4", engine = "powered", role = "support", chassis = "train", tier = 4 },
		{ type = "cargo-wagon", name = "crawler-wagon-4", engine = "unpowered", role = "cargo", chassis = "train", tier = 4 },
		{ type = "cargo-wagon", name = "crawler-bot-wagon-4", engine = "unpowered", role = "cargo", chassis = "train", tier = 4 },

		{ type = "locomotive", name = "crawler-locomotive-5", engine = "powered", role = "cargo", chassis = "train", tier = 5 },
		{ type = "locomotive", name = "crawler-locomotive-wagon-5", engine = "powered", role = "support", chassis = "train", tier = 5 },
		{ type = "cargo-wagon", name = "crawler-wagon-5", engine = "unpowered", role = "cargo", chassis = "train", tier = 5 },
		{ type = "cargo-wagon", name = "crawler-bot-wagon-5", engine = "unpowered", role = "cargo", chassis = "train", tier = 5 },

		
		{ type = "locomotive", name = "petro-locomotive-1", engine = "powered", role = "cargo", chassis = "train", tier = 1 },
		{ type = "fluid-wagon", name = "petro-tank1", engine = "unpowered", role = "cargo", chassis = "train", tier = 1 },
		{ type = "fluid-wagon", name = "petro-tank2", engine = "unpowered", role = "cargo", chassis = "train", tier = 1 },
		
		{ type = "locomotive", name = "petro-locomotive-1-2", engine = "powered", role = "cargo", chassis = "train", tier = 2 },
		{ type = "fluid-wagon", name = "petro-tank1-2", engine = "unpowered", role = "cargo", chassis = "train", tier = 2 },
		{ type = "fluid-wagon", name = "petro-tank2-2", engine = "unpowered", role = "cargo", chassis = "train", tier = 2 },
		
		{ type = "locomotive", name = "petro-locomotive-1-3", engine = "powered", role = "cargo", chassis = "train", tier = 3 },
		{ type = "fluid-wagon", name = "petro-tank1-3", engine = "unpowered", role = "cargo", chassis = "train", tier = 3 },
		{ type = "fluid-wagon", name = "petro-tank2-3", engine = "unpowered", role = "cargo", chassis = "train", tier = 3 },
		
		{ type = "locomotive", name = "petro-locomotive-1-4", engine = "powered", role = "cargo", chassis = "train", tier = 4 },
		{ type = "fluid-wagon", name = "petro-tank1-4", engine = "unpowered", role = "cargo", chassis = "train", tier = 4 },
		{ type = "fluid-wagon", name = "petro-tank2-4", engine = "unpowered", role = "cargo", chassis = "train", tier = 4 },
		
		{ type = "locomotive", name = "petro-locomotive-1-5", engine = "powered", role = "cargo", chassis = "train", tier = 5 },
		{ type = "fluid-wagon", name = "petro-tank1-5", engine = "unpowered", role = "cargo", chassis = "train", tier = 5 },
		{ type = "fluid-wagon", name = "petro-tank2-5", engine = "unpowered", role = "cargo", chassis = "train", tier = 5 },

		
		{ type = "locomotive", name = "smelting-locomotive-1", engine = "powered", role = "cargo", chassis = "train", tier = 1 },
		{ type = "locomotive", name = "smelting-locomotive-tender", engine = "powered", role = "support", chassis = "train", tier = 1 },
		{ type = "cargo-wagon", name = "smelting-wagon-1", engine = "unpowered", role = "cargo", chassis = "train", tier = 1 },
		
		{ type = "locomotive", name = "smelting-locomotive-1-2", engine = "powered", role = "cargo", chassis = "train", tier = 2 },
		{ type = "locomotive", name = "smelting-locomotive-tender-2", engine = "powered", role = "support", chassis = "train", tier = 2 },
		{ type = "cargo-wagon", name = "smelting-wagon-1-2", engine = "unpowered", role = "cargo", chassis = "train", tier = 2 },
		
		{ type = "locomotive", name = "smelting-locomotive-1-3", engine = "powered", role = "cargo", chassis = "train", tier = 3 },
		{ type = "locomotive", name = "smelting-locomotive-tender-3", engine = "powered", role = "support", chassis = "train", tier = 3 },
		{ type = "cargo-wagon", name = "smelting-wagon-1-3", engine = "unpowered", role = "cargo", chassis = "train", tier = 3 },
		
		{ type = "locomotive", name = "smelting-locomotive-1-4", engine = "powered", role = "cargo", chassis = "train", tier = 4 },
		{ type = "locomotive", name = "smelting-locomotive-tender-4", engine = "powered", role = "support", chassis = "train", tier = 4 },
		{ type = "cargo-wagon", name = "smelting-wagon-1-4", engine = "unpowered", role = "cargo", chassis = "train", tier = 4 },
		
		{ type = "locomotive", name = "smelting-locomotive-1-5", engine = "powered", role = "cargo", chassis = "train", tier = 5 },
		{ type = "locomotive", name = "smelting-locomotive-tender-5", engine = "powered", role = "support", chassis = "train", tier = 5 },
		{ type = "cargo-wagon", name = "smelting-wagon-1-5", engine = "unpowered", role = "cargo", chassis = "train", tier = 5 },
	}
}

if settings.startup["guft-feature-equipment-angel-vehicle-equipment"].value ~= "none" then
	featuredata.equipment =
	{
		{ type = "generator-equipment", name = "angels-burner-generator-vequip" },
		{ type = "generator-equipment", name = "angels-fusion-reactor-vequip" },
		{ type = "roboport-equipment", name = "angels-repair-roboport-vequip" },
		{ type = "roboport-equipment", name = "angels-construction-roboport-vequip" },
		{ type = "energy-shield-equipment", name = "angels-heavy-energy-shield-vequip" },
		{ type = "active-defense-equipment", name = "angels-rocket-defense-equipment-vequip" },
	}
end

return featuredata