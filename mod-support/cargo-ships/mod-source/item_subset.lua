  data:extend{
    {
      type = "item",
      name = "oil_rig",
      icon = GRAPHICSPATH .. "icons/oil_rig.png",
      icon_size = 64,
      flags = {},
      subgroup = "extraction-machine",
      order = "b[fluids]-c[oil_rig]",
      place_result = "oil_rig",
      stack_size = 5,
    },
    {
      type = "item",
      name = "or_power",
      icons = {
        {icon = GRAPHICSPATH .. "icons/oil_rig.png", icon_size = 64, scale = 0.5},
        {icon = "__base__/graphics/icons/steam-engine.png", icon_size = 64, icon_mipmaps = 4, scale = 0.25, shift = {0.25, 0.25}}
      },
      subgroup = "extraction-machine",
      flags = {"hidden"},
      order = "b[fluids]-c[oil_rig]",
      place_result = "or_power",
      stack_size = 1,
    },
    {
      type = "item",
      name = "or_pole",
      icons = {
        {icon = GRAPHICSPATH .. "icons/oil_rig.png", icon_size = 64, scale = 0.5},
        {icon = "__base__/graphics/icons/small-electric-pole.png", icon_size = 64, icon_mipmaps = 4, scale = 0.25, shift = {0.25, 0.25}}
      },
      subgroup = "extraction-machine",
      flags = {"hidden"},
      order = "b[fluids]-c[oil_rig]",
      place_result = "or_pole",
      stack_size = 1,
    },
    --[[{
      type = "item",
      name = "or_lamp",
      icon = no_icon,
      icon_size = 2,
      subgroup = "extraction-machine",
      flags = {"hidden"},
      order = "b[fluids]-c[oil_rig]",
      place_result = "or_lamp",
      stack_size = 100,
    },]]
    {
      type = "item",
      name = "or_radar",
      icons = {
        {icon = GRAPHICSPATH .. "icons/oil_rig.png", icon_size = 64, scale = 0.5},
        {icon = "__base__/graphics/icons/radar.png", icon_size = 64, icon_mipmaps = 4, scale = 0.25, shift = {0.25, 0.25}}
      },
      subgroup = "extraction-machine",
      flags = {"hidden"},
      order = "b[fluids]-c[oil_rig]",
      place_result = "or_radar",
      stack_size = 1,
    },
  }