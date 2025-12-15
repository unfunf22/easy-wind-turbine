---@class LuaSettings
local SS = settings.startup
--[[
---@Class RecipePrototype
local Recipe = data.raw["recipe"]
]]
data:extend({
	{
        type = "recipe",
        name = "EasyWindTurbine1",
        energy_required = 5,
        ingredients = {
            {type = "item", name = "electronic-circuit", amount = 1},
            {type = "item", name = "engine-unit", amount = 1},
            {type = "item", name = "iron-gear-wheel", amount = 4},
            {type = "item", name = "steel-plate", amount = 10}
        },
        results = {{type="item", name= "EasyWindTurbine1", amount=1}},
		enabled = false
    },
})

if SS["Upgrades"].value == true then
    data:extend({
        {
            type = "recipe",
            name = "EasyWindTurbine2",
            energy_required = 10,
            ingredients = {
                {type = "item", name = "advanced-circuit", amount = 4},
                {type = "item", name = "electric-engine-unit", amount = 4},
                {type = "item", name = "iron-gear-wheel", amount = 8},
                {type = "item", name = "steel-plate", amount = 20},
            },
            results = {{type="item", name= "EasyWindTurbine2", amount=1}},
            enabled = false
        },
        {
            type = "recipe",
            name = "EasyWindTurbine3",
            energy_required = 10,
            ingredients = {
                {type = "item", name = "advanced-circuit", amount = 5},
                {type = "item", name = "processing-unit", amount = 1},
                {type = "item", name = "electric-engine-unit", amount = 10},
                {type = "item", name = "iron-gear-wheel", amount = 20},
                {type = "item", name = "steel-plate", amount = 40},
            },
            results = {{type="item", name= "EasyWindTurbine3", amount=1}},
            enabled = false
        },
    })
end
if SS["Upgrades"].value == false then
    data:extend({
        {
            type = "recipe",
            name = "UpgradeWindTurbine2",
            energy_required = 10,
            ingredients = {
                {type = "item", name = "EasyWindTurbine1", amount = 1},
                {type = "item", name = "electric-engine-unit", amount = 2},
                {type = "item", name = "iron-gear-wheel", amount = 4},
                {type = "item", name = "steel-plate", amount = 10},
            },
            results = {{type="item", name= "EasyWindTurbine2", amount=1}},
            enabled = false
        },
        {
            type = "recipe",
            name = "UpgradeWindTurbine3",
            energy_required = 10,
            ingredients = {
                {type = "item", name = "EasyWindTurbine2", amount = 1},
                {type = "item", name = "processing-unit", amount = 1},
                {type = "item", name = "electric-engine-unit", amount = 5},
                {type = "item", name = "iron-gear-wheel", amount = 10},
                {type = "item", name = "steel-plate", amount = 5},
            },
            results = {{type="item", name= "EasyWindTurbine3", amount=1}},
            enabled = false
        },
    })
end
--[[
if mods["bobplates"] then
    Remove("UpgradeWindTurbine3", "iron-gear-wheel")
    table.insert(Recipe["UpgradeWindTurbine3"].ingredients, {type="item", name= "bob-lead-plate", amount=20})
end
]]