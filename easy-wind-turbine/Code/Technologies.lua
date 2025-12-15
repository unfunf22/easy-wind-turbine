---@class data.TechnologyPrototype
local Tech = data.raw.technology
---@class LuaSettings
local SS = settings.startup

data:extend({
	{
        type = "technology",
        name = "EasyWindTurbine-1",
        icon = "__easy-wind-turbine__/graphics/windturbine1.png",
        icon_size = 128,
        prerequisites = {"engine"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "EasyWindTurbine1"
            }
        },
        unit = {
            count = 50,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 10
        }
    },
	{
        type = "technology",
        name = "EasyWindTurbine-2",
        icon = "__easy-wind-turbine__/graphics/windturbine2.png",
        icon_size = 128,
        prerequisites = {"electric-engine", "EasyWindTurbine-1"},
        effects = {},
        unit = {
            count = 150,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
            },
            time = 15
        }
    },
	{
        type = "technology",
        name = "EasyWindTurbine-3",
        icon = "__easy-wind-turbine__/graphics/windturbine3.png",
        icon_size = 128,
        prerequisites = {"electric-engine", "processing-unit", "EasyWindTurbine-2"},
        effects = {},
        unit = {
            count = 200,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"utility-science-pack", 1},
            },
            time = 20
        }
    }
})

if SS["Upgrades"].value == false then
    table.insert(Tech["EasyWindTurbine-2"].effects, {type = "unlock-recipe", recipe = "UpgradeWindTurbine2"})
    table.insert(Tech["EasyWindTurbine-3"].effects, {type = "unlock-recipe", recipe = "UpgradeWindTurbine3"})
end
if SS["Upgrades"].value == true then
    table.insert(Tech["EasyWindTurbine-2"].effects, {type = "unlock-recipe", recipe = "EasyWindTurbine2"})
    table.insert(Tech["EasyWindTurbine-3"].effects, {type = "unlock-recipe", recipe = "EasyWindTurbine3"})
end