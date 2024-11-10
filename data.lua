data:extend({
	{--hier neu
    type = "generator",
    name = "wind-turbine-1",
    icon = "__easy-wind-turbine__/graphics/wind_turbine_item.png",
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "wind-turbine-1"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 100.0,
    fluid_usage_per_tick = 0.01,
    maximum_temperature = 100,
    resistances = {
        {type = "fire", percent = 20 },
        {type = "physical", percent = 20 },
        {type = "impact", percent = 30 }
    },
    fast_replaceable_group = "wind-turbine",
	--collision_mask = { "item-layer", "object-layer", "water-tile"},
    collision_box = {{-1.0, -1.0}, {1.0, 1.0}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
        volume = 200,
        base_area = 1,
        height = 2,
        base_level = -1,
        --pipe_covers = pipecoverspictures(),
        pipe_connections = {
        --{ type = "input-output", position = {0, 3}},
        --{ type = "input-output", position = {0, -3}},
    },
        production_type = "input-output",
        filter = "steam",
        minimum_temperature = 0.0
    },
    energy_source = {
        type = "electric",
        usage_priority = "primary-output"
    },
		horizontal_animation = {
			filename = "__easy-wind-turbine__/graphics/wind_turbine1_horizontal.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			repeat_count = 10,
			shift = {2.48, -1.45}
		},
		vertical_animation = {
			filename = "__easy-wind-turbine__/graphics/wind_turbine1_vertical.png",
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
	{--hier neu 2
    type = "generator",
    name = "wind-turbine-2",
    icon = "__easy-wind-turbine__/graphics/wind_turbine_item.png",
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "wind-turbine-2"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 100.0,
    fluid_usage_per_tick = 0.039,
    maximum_temperature = 100,
    resistances = {
        {type = "fire", percent = 20},
        {type = "physical", percent = 20},
        {type = "impact", percent = 30}
    },
    fast_replaceable_group = "wind-turbine",
	--collision_mask = { "item-layer", "object-layer", "water-tile"},
    collision_box = {{-1.0, -1.0}, {1.0, 1.0}},
	selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
        volume = 200,
        base_area = 1,
        height = 2,
        base_level = -1,
        --pipe_covers = pipecoverspictures(),
        pipe_connections = {
            --{ type = "input-output", position = {0, 3}},
            --{ type = "input-output", position = {0, -3}},
        },
        production_type = "input-output",
        filter = "steam",
        minimum_temperature = 0.0
    },
    energy_source = {
        type = "electric",
        usage_priority = "primary-output"
    },
		horizontal_animation = {
			filename = "__easy-wind-turbine__/graphics/wind_turbine2_horizontal.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
		vertical_animation = {
			filename = "__easy-wind-turbine__/graphics/wind_turbine2_vertical.png",
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
	{--hier neu 3
        type = "generator",
        name = "wind-turbine-3",
        icon = "__easy-wind-turbine__/graphics/wind_turbine_item.png",
        icon_size = 32,
        flags = {"placeable-neutral","player-creation"},
        minable = {mining_time = 1, result = "wind-turbine-3"},
        max_health = 400,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        effectivity = 100.0,
        fluid_usage_per_tick = 0.098,
        maximum_temperature = 100,
        resistances = {
            {type = "fire", percent = 20 },
            {type = "physical", percent = 20 },
            {type = "impact", percent = 30 }
        },
        fast_replaceable_group = "wind-turbine",
        --collision_mask = { "item-layer", "object-layer", "water-tile"},
        collision_box = {{-1.0, -1.0}, {1.0, 1.0}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        fluid_box = {
            volume = 200,
            base_area = 1,
            height = 2,
            base_level = -1,
            --pipe_covers = pipecoverspictures(),
            pipe_connections = {
                --{type = "input-output", position = {0, 3}},
                --{type = "input-output", position = {0, -3}},
            },
            production_type = "input-output",
            filter = "steam",
            minimum_temperature = 0.0
    },
    energy_source = {
        type = "electric",
        usage_priority = "primary-output"
    },
		horizontal_animation = {
			filename = "__easy-wind-turbine__/graphics/wind_turbine3_horizontal.png",
			width = 300,
			height = 175,
			frame_count = 20,
			line_length = 5,
			shift = {2.48, -1.45}
		},
		vertical_animation = {
			filename = "__easy-wind-turbine__/graphics/wind_turbine3_vertical.png",
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
	--item
    {
		type = "item",
		name = "wind-turbine-1",
		icon = "__easy-wind-turbine__/graphics/wind_turbine_item.png",
		icon_size= 32,
		--flags = {"goes-to-quickbar"},
        group = "logistics",
		subgroup = "energy",
		order = "b[steam-power]-c[wind-turbine]",
		place_result = "wind-turbine-1",
		stack_size = 100
	},
	{
		type = "item",
		name = "wind-turbine-2",
		icon = "__easy-wind-turbine__/graphics/wind_turbine_item.png",
		icon_size= 32,
		--flags = {"goes-to-quickbar"},
        group = "logistics",
		subgroup = "energy",
		order = "b[steam-power]-c[wind-turbine]",
		place_result = "wind-turbine-2",
		stack_size = 100
	},
	{
		type = "item",
		name = "wind-turbine-3",
		icon = "__easy-wind-turbine__/graphics/wind_turbine_item.png",
		icon_size= 32,
		--flags = {"goes-to-quickbar"},
        group = "logistics",
		subgroup = "energy",
		order = "b[steam-power]-c[wind-turbine]",
		place_result = "wind-turbine-3",
		stack_size = 100
	},
	--rezept
    {
        type = "recipe",
        name = "wind-turbine-1",
        energy_required = 5,
        ingredients = {
            {type = "item", name = "electronic-circuit", amount = 1},
            {type = "item", name = "engine-unit", amount = 1},
            {type = "item", name = "iron-gear-wheel", amount = 4},
            {type = "item", name = "steel-plate", amount = 10}
        },
        results = {{type="item", name= "wind-turbine-1", amount=1}},
		enabled = false
    },
	{
        type = "recipe",
        name = "wind-turbine-2",
        energy_required = 10,
        ingredients = {
            {type = "item", name = "advanced-circuit", amount = 4},
            {type = "item", name = "electric-engine-unit", amount = 4},
            {type = "item", name = "iron-gear-wheel", amount = 8},
            {type = "item", name = "steel-plate", amount = 20}
        },
        results = {{type="item", name= "wind-turbine-2", amount=1}},
		enabled = false
    },
	{
        type = "recipe",
        name = "wind-turbine-3",
        energy_required = 10,
        ingredients = {
            {type = "item", name = "advanced-circuit", amount = 5},
			{type = "item", name = "processing-unit", amount = 1},
            {type = "item", name = "electric-engine-unit", amount = 10},
            {type = "item", name = "iron-gear-wheel", amount = 20},
            {type = "item", name = "steel-plate", amount = 40}
        },
        results = {{type="item", name= "wind-turbine-3", amount=1}},
		enabled = false
    },
	--technology
    {
        type = "technology",
        name = "wind-turbine-1",
        icon = "__easy-wind-turbine__/graphics/windturbine1.png",
        icon_size = 128,
        prerequisites = {"engine"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "wind-turbine-1"
            }
        },
        unit = {
            count = 50,
            ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
            time = 10
        }
    },
	{
        type = "technology",
        name = "wind-turbine-2",
        icon = "__easy-wind-turbine__/graphics/windturbine2.png",
        icon_size = 128,
        prerequisites = {"electric-engine", "wind-turbine-1"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "wind-turbine-2"
            }
        },
        unit = {
            count = 150,
            ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1},{"chemical-science-pack", 1}},
            time = 15
        }
    },
	{
        type = "technology",
        name = "wind-turbine-3",
        icon = "__easy-wind-turbine__/graphics/windturbine3.png",
        icon_size = 128,
        prerequisites = {"electric-engine", "processing-unit", "wind-turbine-2"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "wind-turbine-3"
            }
        },
        unit = {
            count = 200,
            ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1},{"chemical-science-pack", 1},{"utility-science-pack", 1}},
            time = 20
        }
    }
})
