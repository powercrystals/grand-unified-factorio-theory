local featuredata =
{
	equipment =
	{
		{ type = "generator-equipment", name = "el_train_equipment_generator_item", chassis = { "train" } },
		{ type = "generator-equipment", name = "fi_train_equipment_generator_item", chassis = { "train" }, minimum_tier = 4 },
		{ type = "generator-equipment", name = "fi_equipment_player_reactor_item", chassis = { "player" }, minimum_tier = 3 },
		{ type = "movement-bonus-equipment", name = "el_train_equipment_accelerator_item", chassis = { "train" }, engines = { "powered" } },
	},
	armors =
	{
	},
	vehicles =
	{
		{ type = "locomotive", name = "el_diesel_train_entity", engine = "powered", role = "cargo", chassis = "train", tier = 2 },
		{ type = "locomotive", name = "gr_magnet_train_entity", engine = "powered", role = "cargo", chassis = "train", tier = 6 },
		{ type = "cargo-wagon", name = "gr_magnet_wagon_entity", engine = "unpowered", role = "cargo", chassis = "train", tier = 6 },
		{ type = "fluid-wagon", name = "gr_magnet_tanker_entity", engine = "unpowered", role = "cargo", chassis = "train", tier = 6 },
	}
}

return featuredata