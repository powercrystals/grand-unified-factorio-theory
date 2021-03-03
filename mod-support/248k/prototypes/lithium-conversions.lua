if mods["248k"] and mods["bobplates"] then
	if mods["angelsrefining"] then
		local recipe =
		{
			type = "recipe",
			name = "lithium-to-lithium-salt",
			category = "chemistry",
			subgroup = "bob-resource-chemical",
			energy_required = 4,
			ingredients =
			{
				{ type="fluid", name="water-saline", amount=100 },
				{ type="item", name="el_lithium_ore_item", amount=8 },
			},
			results=
			{
				{ type="item", name="solid-lithium", amount=4 },
				{ type="item", name="slag", amount=1 },
				{ type="fluid", name="steam", amount=20 },
			},
			icon = "__angelsrefining__/graphics/icons/solid-lithium.png",
			icon_size = 32,
			order = "l",
			enabled = false,
		}
		if mods["angelspetrochem"] then
			recipe.category = "liquifying"
			recipe.subgroup = "petrochem-chlorine-2"
		end
		data:extend({ recipe })

		table.insert(data.raw["technology"]["lithium-processing"].effects, { type = "unlock-recipe", recipe = "lithium-to-lithium-salt" })
	else
		data:extend({
			{
				type = "recipe",
				name = "lithium-to-lithium-chloride",
				category = "chemical-furnace",
				subgroup = "bob-resource-chemical",
				energy_required = 2,
				ingredients =
				{
					{ type="item", name="el_lithium_ore_item", amount=4 },
				},
				results=
				{
					{ type="item", name="lithium-chloride", amount=2 },
				},
				icon = "__bobplates__/graphics/icons/lithium-chloride.png",
				icon_size = 32,
				order = "l",
			},
		})

		table.insert(data.raw["technology"]["lithium-processing"].effects, { type = "unlock-recipe", recipe = "lithium-to-lithium-chloride" })
	end
end