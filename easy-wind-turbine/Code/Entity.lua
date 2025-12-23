---@class LuaSettings
local SS = settings.startup
local FluidBoxAmountValue = SS["FluidBoxAmountValueX"].value
local FluidBoxAmountValueMultiplier = SS["FluidBoxAmountValueMultiplierX"].value
--local FluidUsagePerTick = SS["FluidUsagePerTickX"].value --For test´s
--local Effeciency = SS ["EffenciecyX"].value --For test´s

data:extend({
	{
		type = "generator",
		name = "EasyWindTurbine1",
		icon = "__easy-wind-turbine__/graphics/Item/wind_turbine_item.png",
		icon_size = 32,
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "EasyWindTurbine1"},
		max_health = 400,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		effectivity = 0.981, --50.0,
		fluid_usage_per_tick = 0.12, --0.0196,
		maximum_temperature = 100,
		resistances = {
			{type = "fire", percent = 20 },
			{type = "physical", percent = 20 },
			{type = "impact", percent = 30 }
		},
		fast_replaceable_group = "easy-wind-turbine",
		collision_box = {{-0.50, -0.50}, {0.50, 0.50}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box = {
			--[[
			Comparing old version with new SteamValue was renamed to: FluidBoxAmountValue & 200 was converted to SS["Tier-X"] 
			Old: SteamValue * 200:
			New: FluidBoxAmountValue * SS["Tier-X"] * FluidBoxAmountValueMultiplier

			Tier-X * FluidBoxAmountValue * FluidBoxAmountValueMultiplier
			100 * 1 * 1
			so you just have a ground value by 1 multiplied by 100 and again multiplied by 2 if you want to make the fluid box even bigger.
			]]
			volume = SS["Tier-1"].value * FluidBoxAmountValue * FluidBoxAmountValueMultiplier,
			base_area = 1,
			height = 2,
			base_level = -1,
			pipe_connections = {},
			production_type = "input-output",
			filter = "Wind",
			minimum_temperature = 0.0
		},
		energy_source = {
			type = "electric",
			usage_priority = "primary-output"
		},
		horizontal_animation = {
			filename = "__easy-wind-turbine__/graphics/Entity/wind_turbine1_horizontal.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			repeat_count = 10,
			shift = {2.48, -1.45}
		},
		vertical_animation = {
			filename = "__easy-wind-turbine__/graphics/Entity/wind_turbine1_vertical.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			repeat_count = 10,
			shift = {2.48, -1.45}
		},
        working_sound = {
            sound = {
                filename = "__base__/sound/train-wheels.ogg",
                volume = 0.4
            },
            match_speed_to_activity = true,
        },
        min_perceived_performance = 1.0,
        performance_to_sound_speedup = 0.2
    },
	{
		type = "generator",
		name = "EasyWindTurbine2",
		icon = "__easy-wind-turbine__/graphics/Item/wind_turbine_item.png",
		icon_size = 32,
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "EasyWindTurbine2"},
		max_health = 400,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		effectivity = 9.81,
		fluid_usage_per_tick = 0.06,
		maximum_temperature = 100,
			resistances = {
			{type = "fire", percent = 20},
			{type = "physical", percent = 20},
			{type = "impact", percent = 30}
		},
		fast_replaceable_group = "easy-wind-turbine",
		collision_box = {{-0.50, -0.50}, {0.50, 0.50}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box = {
			volume = SS["Tier-2"].value * FluidBoxAmountValue * FluidBoxAmountValueMultiplier,
			base_area = 1,
			height = 2,
			base_level = -1,
			pipe_connections = {},
			production_type = "input-output",
			filter = "Wind",
			minimum_temperature = 0.0
		},
		energy_source = {
			type = "electric",
			usage_priority = "primary-output"
		},
		horizontal_animation = {
			filename = "__easy-wind-turbine__/graphics/Entity/wind_turbine2_horizontal.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
		vertical_animation = {
			filename = "__easy-wind-turbine__/graphics/Entity/wind_turbine2_vertical.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
        working_sound = {
            sound = {
                filename = "__base__/sound/train-wheels.ogg",
                volume = 0.4
            },
            match_speed_to_activity = true,
        },
        min_perceived_performance = 1.00,
        performance_to_sound_speedup = 0.2
    },
	{
		type = "generator",
		name = "EasyWindTurbine3",
		icon = "__easy-wind-turbine__/graphics/Item/wind_turbine_item.png",
		icon_size = 32,
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "EasyWindTurbine3"},
		max_health = 400,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		effectivity = 39.41,
		fluid_usage_per_tick = 0.03,
		maximum_temperature = 100,
		resistances = {
			{type = "fire", percent = 20 },
			{type = "physical", percent = 20 },
			{type = "impact", percent = 30 }
		},
        fast_replaceable_group = "easy-wind-turbine",
        collision_box = {{-0.50, -0.50}, {0.50, 0.50}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fluid_box = {
            volume = SS["Tier-3"].value * FluidBoxAmountValue * FluidBoxAmountValueMultiplier,
            base_area = 1,
            height = 2,
            base_level = -1,
            pipe_connections = {},
            production_type = "input-output",
            filter = "Wind",
            minimum_temperature = 0.0
		},
		energy_source = {
			type = "electric",
			usage_priority = "primary-output"
		},
		horizontal_animation = {
			filename = "__easy-wind-turbine__/graphics/Entity/wind_turbine3_horizontal.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
		vertical_animation = {
			filename = "__easy-wind-turbine__/graphics/Entity/wind_turbine3_vertical.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
        working_sound = {
            sound = {
                filename = "__base__/sound/train-wheels.ogg",
				volume = 0.4
            },
            match_speed_to_activity = true,
        },
        min_perceived_performance = 1.0,
        performance_to_sound_speedup = 0.2
    },
	{
		type = "generator",
		name = "EasyWindTurbine4",
		icon = "__easy-wind-turbine__/graphics/Item/wind_turbine_item.png",
		icon_size = 32,
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "EasyWindTurbine4"},
		max_health = 400,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		effectivity = 117.61,
		fluid_usage_per_tick = 0.015,
		maximum_temperature = 100,
		resistances = {
			{type = "fire", percent = 20 },
			{type = "physical", percent = 20 },
			{type = "impact", percent = 30 }
		},
        fast_replaceable_group = "easy-wind-turbine",
        collision_box = {{-0.50, -0.50}, {0.50, 0.50}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fluid_box = {
            volume = SS["Tier-4"].value * FluidBoxAmountValue * FluidBoxAmountValueMultiplier,
            base_area = 1,
            height = 2,
            base_level = -1,
            pipe_connections = {},
            production_type = "input-output",
            filter = "Wind",
            minimum_temperature = 0.0
		},
		energy_source = {
			type = "electric",
			usage_priority = "primary-output"
		},
		horizontal_animation = {
			filename = "__easy-wind-turbine__/graphics/Entity/wind_turbine4_horizontal.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
		vertical_animation = {
			filename = "__easy-wind-turbine__/graphics/Entity/wind_turbine4_vertical.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
        working_sound = {
            sound = {
                filename = "__base__/sound/train-wheels.ogg",
				volume = 0.4
            },
            match_speed_to_activity = true,
        },
        min_perceived_performance = 1.0,
        performance_to_sound_speedup = 0.2
    },
	{
		type = "generator",
		name = "EasyWindTurbine5",
		icon = "__easy-wind-turbine__/graphics/Item/wind_turbine_item.png",
		icon_size = 32,
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 1, result = "EasyWindTurbine5"},
		max_health = 400,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		effectivity = 331.451,
		fluid_usage_per_tick = 0.0071, --was 0.1961
		maximum_temperature = 100,
		resistances = {
			{type = "fire", percent = 20 },
			{type = "physical", percent = 20 },
			{type = "impact", percent = 30 }
		},
        fast_replaceable_group = "easy-wind-turbine",
        collision_box = {{-0.50, -0.50}, {0.50, 0.50}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fluid_box = {
            volume = SS["Tier-5"].value * FluidBoxAmountValue * FluidBoxAmountValueMultiplier,
            base_area = 1,
            height = 2,
            base_level = -1,
            pipe_connections = {},
            production_type = "input-output",
            filter = "Wind",
            minimum_temperature = 0.0
		},
		energy_source = {
			type = "electric",
			usage_priority = "primary-output"
		},
		horizontal_animation = {
			filename = "__easy-wind-turbine__/graphics/Entity/wind_turbine5_horizontal.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
		vertical_animation = {
			filename = "__easy-wind-turbine__/graphics/Entity/wind_turbine5_vertical.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
        working_sound = {
            sound = {
                filename = "__base__/sound/train-wheels.ogg",
				volume = 0.4
            },
            match_speed_to_activity = true,
        },
        min_perceived_performance = 1.0,
        performance_to_sound_speedup = 0.2
    },
})