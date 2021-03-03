-- swap gems and crystals
if settings.startup["guft-balance-swap-angel-gems-crystals"].value then
	guftlib.recipe.item_replace("speed-processor", "crystal-splinter-blue", "sapphire-3")
	guftlib.recipe.item_replace("speed-processor-2", "crystal-shard-blue", "sapphire-4")
	guftlib.recipe.item_replace("speed-processor-3", "crystal-full-blue", "sapphire-5")

	guftlib.recipe.item_replace("effectivity-processor", "crystal-splinter-green", "emerald-3")
	guftlib.recipe.item_replace("effectivity-processor-2", "crystal-shard-green", "emerald-4")
	guftlib.recipe.item_replace("effectivity-processor-3", "crystal-full-green", "emerald-5")

	guftlib.recipe.item_replace("productivity-processor", "crystal-splinter-red", "amethyst-3")
	guftlib.recipe.item_replace("productivity-processor-2", "crystal-shard-red", "amethyst-4")
	guftlib.recipe.item_replace("productivity-processor-3", "crystal-full-red", "amethyst-5")

	guftlib.recipe.item_replace("pollution-clean-processor", "crystal-splinter-harmonic", "diamond-3")
	guftlib.recipe.item_replace("pollution-clean-processor-2", "crystal-shard-harmonic", "diamond-4")
	guftlib.recipe.item_replace("pollution-clean-processor-3", "crystal-full-harmonic", "diamond-5")

	guftlib.recipe.item_replace("pollution-create-processor", "crystal-splinter-harmonic", "ruby-3")
	guftlib.recipe.item_replace("pollution-create-processor-2", "crystal-shard-harmonic", "ruby-4")
	guftlib.recipe.item_replace("pollution-create-processor-3", "crystal-full-harmonic", "ruby-5")

	guftlib.recipe.item_replace("angels-bio-yield-module", "crystal-splinter-green", "topaz-3")
	guftlib.recipe.item_replace("angels-bio-yield-module-2", "crystal-shard-green", "topaz-4")
	guftlib.recipe.item_replace("angels-bio-yield-module-3", "crystal-full-green", "topaz-5")
end