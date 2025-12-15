local item_sounds = require("__base__.prototypes.item_sounds")
data:extend({
    {
		type = "item",
		name = "EasyWindTurbine1",
		icon = "__easy-wind-turbine__/graphics/wind_turbine_item.png",
		icon_size= 32,
		weight = 10000,
        group = "logistics",
		subgroup = "WindTurbines",
		order = "[EasyWindTurbine1]",
		inventory_move_sound = item_sounds.steam_inventory_move,
		pick_sound = item_sounds.steam_inventory_pickup,
		drop_sound = item_sounds.steam_inventory_move,
		place_result = "EasyWindTurbine1",
		stack_size = 100
	},
	{
		type = "item",
		name = "EasyWindTurbine2",
		icon = "__easy-wind-turbine__/graphics/wind_turbine_item.png",
		icon_size= 32,
		weight = 15000,
        group = "logistics",
		subgroup = "WindTurbines",
		order = "[EasyWindTurbine2]",
		inventory_move_sound = item_sounds.steam_inventory_move,
		pick_sound = item_sounds.steam_inventory_pickup,
		drop_sound = item_sounds.steam_inventory_move,
		place_result = "EasyWindTurbine2",
		stack_size = 100
	},
	{
		type = "item",
		name = "EasyWindTurbine3",
		icon = "__easy-wind-turbine__/graphics/wind_turbine_item.png",
		icon_size= 32,
		weight = 20000,
        group = "logistics",
		subgroup = "WindTurbines",
		order = "[EasyWindTurbine3]",
		inventory_move_sound = item_sounds.steam_inventory_move,
		pick_sound = item_sounds.steam_inventory_pickup,
		drop_sound = item_sounds.steam_inventory_move,
		place_result = "EasyWindTurbine3",
		stack_size = 100
	},
})