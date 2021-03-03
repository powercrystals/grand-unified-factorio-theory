if settings.startup["guft-misc-early-logistics"].value and not mods["angelsindustries"] then
	guftlib.recipe.prerequisite_remove("logistic-chest-requester", "logistic-system")
	guftlib.recipe.prerequisite_add("logistic-chest-requester", "logistic-robotics")
end