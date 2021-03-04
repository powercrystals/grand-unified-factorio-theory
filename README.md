# Welcome to power crystals' Grand Unified Factorio Theory!

## What is GUFT?

GUFT is designed to integrate mods together in a way that makes them behave the same and integrate (or at least cooperate) where appropriate, allowing you to play Factorio your way, despite those mods frequently not being aware of each others' existence. It supports a variety of mods in a variety ways and, as the name implies, tries to make their behavior unified.

But you can also use this with just the base game! Some features are useful even without any content mods included at all. GUFT is not a modpack. It has no required dependencies at all. All the dependencies listed are optional and present only to control load order in case you have them installed.

GUFT is separated in-game into ore toggles, major features, and minor features/balance changes. Major features will list their supported mods below. Not every combination of feature and mod is supported, but most commonly because this doesn't make sense (for example, Cargo Ships isn't supported by the Belt Overhaul feature because it doesn't define any belts). Unless otherwise specified, all of these can be disabled.

I consider the Equipment and Grid Overhaul and Ore Spawn Logic Replacement below to be the standout features of this mod, but if you just want it solely for the Magic Barrels, that's great too.

Installing this mod will, depending on the exact set of mods you're playing with, change recipes and possibly remove items. If you're adding this to an existing game, back up your save first! It should be safe, but it's hard for me to guarantee the behavior of every combination of supported mods. If it does something wierd or unexpected upon installation, please let me know.

I also guarantee there's mods I haven't included support for that somebody's going to want, just based on the sheer volume of Factorio mods and the fact that I can't possibly play all of them myself. If there's one you want supported but isn't, let me know; if you can directly contribute to the GitHub project, even better.

## Major Features

### Belt Speed Overhaul

By default, belt speeds increase linearly with their tier, which makes additional belt tiers decreasingly satisfying as they extend past express (blue). This changes it to be more exponential, making it so those new belts feel like a worthwhile upgrade.

Supported mods: Base game - Bob's mods - Loader Redux - Miniloader - Yuoki Industries

### Biological Process Speed Buffs

Many mods that add biological processes for refinement make these processes very slow. This feature will greatly increase those speeds, making them more akin to regular processes.

Supported mods: Angel's mods - Bio Industries - Bob's mods - Yuoki Industries

### Decomposition Improvements

With larger mods, especially those that introduce cycles, the "Raw" cost tooltips can rapidly become difficult to useless. This attempts to rectify this. It's not perfect, but I think it's a lot better.

This feature cannot be disabled.

Supported mods: Angel's mods - Base game - Bob's mods - MadClown01's mods

### Equipment and Grid Overhaul

This feature unifies equipment grid categories across supported mods, allowing you to combine equipment and armors/vehicles from disparate sources. It also adds a regular progression of grid sizes, and has restrictions of what can go where based on tier and role. For example, in the base game by itself, Roboport Mk2s require Power Armors or better; the Modular Armor won't do. If you have Bob's Vehicle Equipment installed, the Plasma Cannon is limited to "support" vehicles, so you can't put it in tanks--but you can put it in an AAI Warden, for example.

The mod support allows you to combine equipment in potentially unusual ways, such as placing Angel's reactors in Aircraft's... aircraft, or placing 248k's locomotive equipment in Yuoki Railways' locomotives.

There are also two additional toggles: One for how to handle Angel's equipment, as it is significantly more powerful than most other mods (as-is, rebalanced, or disabled entirely), and one allowing you to place player equipment in vehicles in case you don't have a mod providing vehicle-specific equipment.

Supported mods: 248k - Accumulator Wagon - Aircraft - Angel's mods - Automatic Train Painter - Base game - Bob's mods - Cargo Ships - Hovercraft - Nuclear Locomotive - Power Armor mk3 - Pyanodon's mods - Yuoki Industries

### Fast Replace Corrections

Some mods have the "next upgrade" field missing, preventing you from using an upgrade planner without manually configuring it. This fixes that, where I can.

This feature cannot be disabled.

Supported mods: Angel's mods - Base game - Bob's mods - MadClown01's mods

### Hide Recipes from Hand Crafting That Cannot Be Hand-Crafted

The name explains this one pretty well, I think. This can make it easier to find things you want when playing with larger mods. If you turn this on, I recommend you install FNEI or something like it to look up recipes that cannot be handcrafted.

Support mods: N/A (runs on all applicable recipes)

### Magic Barrels

Filling barrels no longer costs empty barrels, and emptying them does not produce empty barrels. If you dislike that aspect of Factorio's logistics, this will solve that for you. Also supports mod barrel-alikes where appropriate.

Supported mods: Angel's mods (catalyst carriers) - Base game (barrels) - Bob's mods (gas cylinder, canister)

### Mining Drill Area Reduction

Reduces the electric mining drill from 5x5 to 3x3. This can make some things easier if you have overlapping ores.

Supported mods: Base game - Bob's mods ("large area" drills are unchanged)

### Ore Crushing

If playing with Angel's mods, it is possible to wind up in a situation where a process jams because you have too much of another ore. This allows you to crush any ore to stone dust.

This feature cannot be disabled, and requires Angel's Refining installed to function.

Supported mods: Angel's mods - Base game - Bob's mods - MadClown01's mods - Yuoki Industries

### Ore Spawn Logic Replacement

Most mods that add ores do not set varied rarities on those ores. This overrides all that, substituting its own rarity settings. It uses metadata about ore "tier" and "rarity" to control how often resource deposits should show up and how large/rich they should be. It will also attempt to intelligently decide which ores are required in the starting area.

This feature also lets you combine ores in unusual or even otherwise impossible ways, such as playing with Bob's ores while Angel's mods are installed, or allowing you to make Omnimatter a rare alternate deposit instead of the only ore in the game.

This **also** lets you globally control ore rarity, allowing you to make ores require exploration (beware enemy frequency if you set them too rare--it's possible to find yourself boxed in!)

And, GUFT **also** adds optional resources for the following ores that normally aren't found on the map:
* 248k's Lithium ore
* Angel's Chrome, Manganese, and Platinum ores
* Angel's Clay, Salt, Sand, and Soil resources
* Cargo Ships deep sea versions of Angel's Gas Well and Fissure resources
* MadClown01's Osmium, Magnesium, and Phosphorus

Supported mods: 248k - Angel's mods - Base game - Bob's mods - Ice Ore - MadClown01's mods - Omnimatter - Pyanodon's mods - Yuoki Industries

### Productivity Updates

This enables productivity for recipes that probably should have had it, and respects Angel's Agricultural Modules if those are installed. It also enables those in other biological processes, where applicable.

Supported mods: 248k - Angel's mods - Bio Industries - Yuoki Industries

### Radar Range Increase

Much like belts, mod radars frequently do not scale in a way where the higher levels are interesting. This increases radar ranges.

Supported mods: Base game - Bob's mods

### Unicomp Overhaul

Yuoki Industries' unicomp, as it is programmed, is a relatively 1:1 exchange, which can be very powerful. This reduces its effectiveness by requiring you to convert from finished components (typically plates) to raw ingredients (typically ores).

Supported mods: Angel's mods - Base game - Bob's mods - MadClown01's mods - Yuoki Industries

## Minor Features and Balance Changes

### AAI Vehicle Cost Changes

Updates AAI vehicle recipes to make use of Angel and Bob's components. By default, AAI vehicles can seem very cheap.

### Swap Angel's Crystals for Gems in Module Recipes

Replaces Angel's crystals in modules with gems. Crystals are still required for beacons. This alleviates the need to delve deeply into the associated processes to construct modules.

### Angel's Ore Sorting Results Multiplier

Makes sorting Angel's compound ores produce more or fewer sorted ores.

### Remove Artifacts from Bob's Equipment Recipes

As the name says. This lets you skip that part of the process if you just want fancier equipment.

### Earlier Logistics Requester Chests

Moves Requester chests to a blue technology for earlier access to logistics robots.

### Fragile Burners

Burner miners and burner inserters return their parts when picked up instead of the crafted entity so you can avoid wasting their resources.

### Offshore/Ground Pumps Produce Water if Omnimatter Is Installed

Again, as the name says. This is for if you enable Omnimatter and other ores as well; you'll probably want access to water in that case.

### Enable Chemical Fuel in Yuoki Locomotives

Enables using chemical fuel (the default, coal/wood/etc.) in Yuoki Diesel- and Future-era trains.

### Infinite Ores

And finally, there's an option to make ores effectively infinite by setting them to 100M per tile, which should be enough for any sane game length. This avoids the issue that true infinite ores (using the method that oil does in the base game) have, where mines' output is determined by the ores they're on. Already-infinite resources like oil will no longer deplete over time.



## Known issues
* Tin crushing has tin colored wrong.
* Some non-hand-craftable recipes still show up in the hand crafting menu despite that being disabled.

If anyone has any idea what's going on with either of the above I'd love to hear it.

I also cannot possibly test every single combination of mods supported by GUFT as I just don't have that kind of time, so while I try to test the major sets it's possible that you'll run into an issue with unusual combinations. If so, please let me know.

## FAQ

- Can you add support for Mod X for the equipment/ore/etc. overhauls?

In general sure, but you might need to help me out by explaining how they work because I don't have time to play every mod myself to learn how they work.

- Can you merge Mod X and Mod Y better?

Again, in general, sure, but I'll need to know what that means. Depending on complexity this might be a low priority thing.

- Can you make Mod X work with Mod Y (because it currently doesn't)?

This is more of a challenge. If it's a simple thing like recipes that wind up with circular dependencies where you can't actually make it, or a technology that can't be researched, that's probably fixable. If the game doesn't even load, that might be harder. In particular, Industrial Revolution and Space Exploration go out of their way to make this hard to correct and I have no current plans to support either unless somebody else contributes the required programming.

- Can you make X balance change?

Maybe. I'm hesitant to doing that kind of thing unilaterally as "balanced" is somewhat subjective, especially in a game like this that isn't competitive, and adding settings for every possible balance change would get crazy. If it's making Mod Y take advantage of Mod Z's materials (as with AAI Vehicles and Angel, as supported), that's probably fine, but "make this recipe cost 20% more" is not a thing I am likely to do. GUFT is built to make these things play well together, not dictate a vision. I will allow an exception for things where the math appears to be not be planned out in the first place--where there's unintended positive feedback loops or a process that is tremendously more/less efficient than another comparable one, that kind of thing.

- Do you accept pull requests?

Subject to review for quality, correctness, and being useful/consistent with the overall vision, yes. But e.g. if you want to add support for a vehicle mod I haven't heard of, you can probably figure out how that works pretty easily from the existing source, and I'd be happy to expand my support to cover more mods.

- Can I use this in my modpack/custom server/twitch stream/etc?

Of course! That's the point. Mods are for the community. Go nuts. I would appreciate but will not require credit.