-- Yuoki railways' wagons have a seemingly random cargo size by default, some as few as five slots (?!)
-- this normalizes their sizes a bit, treating steam (and none) as tier 1, diesel as 2, and future as 3
-- this does nothing for them being random sizes; that we're just stuck with

local tier_cargo_capacities = { steam = 40, diesel = 60, future = 80 }
local tier_fluid_capacities = { steam = 25000, diesel = 37500, future = 50000 }
local tier_max_speeds = { steam = 1.875, diesel = 2.35, future = 3 }

local function set_yuoki_train_tier(name, tier)
	if tier == "diesel" then
		guftlib.recipe.item_replace("yir_coin", "yir_diesel_coin")
	end

	if tier == "future" then
		guftlib.recipe.item_replace("yir_coin", "yir_future_coin")
		guftlib.recipe.item_replace("yir_diesel_coin", "yir_future_coin")
	end

	-- trains with "no tier" use steam capacity

	if tier == "" then
		tier = "steam"
	end

	if data.raw["cargo-wagon"][name] then
		data.raw["cargo-wagon"][name].inventory_size = tier_cargo_capacities[tier]
		data.raw["cargo-wagon"][name].max_speed = tier_max_speeds[tier]
	end

	if data.raw["fluid-wagon"][name] then
		data.raw["fluid-wagon"][name].capacity = tier_fluid_capacities[tier]
		data.raw["fluid-wagon"][name].max_speed = tier_max_speeds[tier]
	end

	if data.raw["locomotive"][name] then
		data.raw["locomotive"][name].max_speed = tier_max_speeds[tier]
		if settings.startup["guft-misc-yuoki-trains-chemical-fuel"].value and data.raw["locomotive"][name].burner then
			if data.raw["locomotive"][name].burner.fuel_category then
				data.raw["locomotive"][name].burner.fuel_categories = { data.raw["locomotive"][name].burner.fuel_category }
				data.raw["locomotive"][name].burner.fuel_category = nil
			end

			if not data.raw["locomotive"][name].burner.fuel_categories then
				data.raw["locomotive"][name].burner.fuel_categories = {}
			end

			if #data.raw["locomotive"][name].burner.fuel_categories < 1 or data.raw["locomotive"][name].burner.fuel_categories[1] ~= "chemical" then
				table.insert(data.raw["locomotive"][name].burner.fuel_categories, "chemical")
			end
		end
	end
end

-- fix trains (mostly locomotives) whose recipe coin tier doesn't line up with what it should be (typically based on fuel consumption)

-- Yuoki Railways base
set_yuoki_train_tier("y_wagon_corn_blue","steam")
set_yuoki_train_tier("y_wagon_corn_green","steam")
set_yuoki_train_tier("y_wagon_trans","")
set_yuoki_train_tier("y_wagon_closed","steam")
set_yuoki_train_tier("y_wagon_hopper_yellow","steam")
set_yuoki_train_tier("yir_2acw_wood","steam")
set_yuoki_train_tier("y_wagon_coal","steam")
set_yuoki_train_tier("y_wagon_copper","steam")
set_yuoki_train_tier("y_wagon_iron","steam")
set_yuoki_train_tier("y_wagon_stone","steam")
set_yuoki_train_tier("yir_2acw_3blocks","")
set_yuoki_train_tier("y_wagon_zement_gray","steam")
set_yuoki_train_tier("y_wagon_zement_white","steam")
set_yuoki_train_tier("yir_4acw_closed","steam")
set_yuoki_train_tier("yir_4acw_coal","steam")
set_yuoki_train_tier("yir_4acw_copper","steam")
set_yuoki_train_tier("yir_4acw_iron","steam")
set_yuoki_train_tier("yir_4acw_vc","")
set_yuoki_train_tier("yir_4acw_wood","steam")
set_yuoki_train_tier("yir_4acw_mun","steam")
set_yuoki_train_tier("yir_4acw_tf","steam")
set_yuoki_train_tier("yir_4acw_gold","steam")
set_yuoki_train_tier("yir_4acw_stone","steam")
set_yuoki_train_tier("yir_4acw_grey","")
set_yuoki_train_tier("yir_4acw_oceanblue","")
set_yuoki_train_tier("yir_4acw_purple","")
set_yuoki_train_tier("yir_fw4_vc","")
set_yuoki_train_tier("y_wagon_tank_blue","steam")
set_yuoki_train_tier("y_wagon_tank_orange","steam")
set_yuoki_train_tier("y_wagon_tank_orange","diesel")
set_yuoki_train_tier("yir_fw4a_tank_oil","")
set_yuoki_train_tier("y_wagon_tank_blue","diesel")
set_yuoki_train_tier("y_wagon_tank_fm2","")
set_yuoki_train_tier("y_wagon_tank_fm1","")
set_yuoki_train_tier("yir_loco_del_mk1400","diesel")
set_yuoki_train_tier("y_wagon_tender_black","steam")
set_yuoki_train_tier("y_wagon_tender_green","steam")
set_yuoki_train_tier("yir_loco_fut_red","")
set_yuoki_train_tier("yir_loco_del_KR","diesel")
set_yuoki_train_tier("y_loco_ses_std","")
set_yuoki_train_tier("yir_loco_sel_blue","")
set_yuoki_train_tier("y_loco_emd3000_white","diesel")
set_yuoki_train_tier("y_loco_desw","diesel")
set_yuoki_train_tier("y_loco_desw_orange","diesel")
set_yuoki_train_tier("y_loco_desw_blue","diesel")
set_yuoki_train_tier("y_loco_emd1500black","diesel")
set_yuoki_train_tier("y_loco_emd1500blue","diesel")
set_yuoki_train_tier("y_loco_emd1500blue_v2","diesel")
set_yuoki_train_tier("y_loco_emd1500black_v2","diesel")
set_yuoki_train_tier("y_loco_diesel_620","")
set_yuoki_train_tier("y_loco_ses_red","")
set_yuoki_train_tier("yir_loco_fesw_op","diesel")
set_yuoki_train_tier("y_loco_fs_steam_green","")
set_yuoki_train_tier("y_loco_steam_wt450","")
set_yuoki_train_tier("yir_loco_del_bluegray","diesel")

-- Americans
set_yuoki_train_tier("yir_wagon_caboose_cr","future")
set_yuoki_train_tier("yir_4a_container_cr","future")
set_yuoki_train_tier("yir_4a_clean_cr","future")
set_yuoki_train_tier("yir_es44cr","diesel")
set_yuoki_train_tier("yir_emdf7a_cr","diesel")
set_yuoki_train_tier("yir_emdf7a_mn","diesel")
set_yuoki_train_tier("yir_emdf7b_cr","diesel")
set_yuoki_train_tier("yir_emdf7b_mn","diesel")

-- Uranium Power
set_yuoki_train_tier("yir_cw_empty_4a","")
set_yuoki_train_tier("yir_cw_flourit_4a","")
set_yuoki_train_tier("yir_cw_trans_4a","")
set_yuoki_train_tier("yir_cw_uran_4a","")
set_yuoki_train_tier("yir_cw_upempty","future")
set_yuoki_train_tier("yir_cw_flourit","future")
set_yuoki_train_tier("yir_cw_upclosed","future")
set_yuoki_train_tier("yir_cw_uranite","future")
set_yuoki_train_tier("yir_cw_4a_cellsu","")
set_yuoki_train_tier("yir_cw_4a_urana","")
set_yuoki_train_tier("yir_atom_header","future")
set_yuoki_train_tier("yir_atom_mitte","future")

-- Yuoki Industries
set_yuoki_train_tier("yir_cw_cargo_green","")
set_yuoki_train_tier("yir_cw_cargo_blue","")
set_yuoki_train_tier("z_yira_4a_cw_kisten","")
set_yuoki_train_tier("z_yira_4a_cw_stuff1","")
set_yuoki_train_tier("y_3acw_T10K","")
set_yuoki_train_tier("z_yira_4a_cw_kiste1","")
set_yuoki_train_tier("z_yira_4a_cw_yigreen","")
set_yuoki_train_tier("z_yira_4a_cw_gears","")
set_yuoki_train_tier("z_yira_4a_cw_yiblue","")
set_yuoki_train_tier("z_yira_4a_cw_energy","")
set_yuoki_train_tier("z_yira_4a_cw_eb1","")
set_yuoki_train_tier("z_yira_4a_cw_ziegelrot","")
set_yuoki_train_tier("z_yira_6a_maai1","")
set_yuoki_train_tier("z_yira_4a_cw_steel","")
set_yuoki_train_tier("z_yira_4a_cw_ziegelgrau","")
set_yuoki_train_tier("yir_us_cargo","")
set_yuoki_train_tier("yir_lsw_r790orange","diesel")
set_yuoki_train_tier("yir_lsw_r790red","diesel")
set_yuoki_train_tier("yir_lsw_840green","diesel")
set_yuoki_train_tier("yir_ns2200gg","diesel")
set_yuoki_train_tier("yir_ns2200wr","diesel")
set_yuoki_train_tier("yir_kr_green","")
set_yuoki_train_tier("yir_loco_steam_wt580of","")
set_yuoki_train_tier("yir_mre044","")
set_yuoki_train_tier("yir_usl","")
