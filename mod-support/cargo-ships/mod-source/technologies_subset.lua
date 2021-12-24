if mods["cargo-ships"] and not data.raw["technology"]["deep_sea_oil_extraction"] then

local function unlock(recipe)
  return {
    type = "unlock-recipe",
    recipe = recipe
  }
end

  data:extend{
    {
      type = "technology",
      name = "deep_sea_oil_extraction",
      icon = GRAPHICSPATH .. "technology/deep_sea_oil_extraction.png",
      icon_size = 256,
      effects = {
        unlock("oil_rig"),
      },
      prerequisites = {"tank_ship", "oil-processing"},
      unit = {
        count = 200,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1}
        },
        time = 30
      },
      order = "c-g-b",
    },
  }
end