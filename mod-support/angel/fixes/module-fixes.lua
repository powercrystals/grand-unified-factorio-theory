-- fix angel's backwards bonuses
if data.raw.module["angels-bio-yield-module"] and data.raw.module["angels-bio-yield-module"].effect["pollution"].bonus > 0 then
	data.raw.module["angels-bio-yield-module"].effect["pollution"].bonus = -data.raw.module["angels-bio-yield-module"].effect["pollution"].bonus
	data.raw.module["angels-bio-yield-module-2"].effect["pollution"].bonus = -data.raw.module["angels-bio-yield-module-2"].effect["pollution"].bonus
	data.raw.module["angels-bio-yield-module-3"].effect["pollution"].bonus = -data.raw.module["angels-bio-yield-module-3"].effect["pollution"].bonus
end