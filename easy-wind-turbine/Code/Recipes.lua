---@class LuaSettings
local SS = settings.startup

data:extend({
	{
        type = "recipe",
        name = "EasyWindTurbine1",
        category = "electronics-or-handcrafting",
        energy_required = 5,
        ingredients = {
            {type = "item", name = "electronic-circuit", amount = 5},
            {type = "item", name = "stone-brick", amount = 20},
            {type = "item", name = "steel-plate", amount = 10},
            {type = "item", name = "engine-unit", amount = 5},
        },
        results = {{type="item", name= "EasyWindTurbine1", amount=1}},
		enabled = false
    },
})
if SS["EasyWindTurbine"].value == "Crafting" then
    data:extend({
        {
            type = "recipe",
            name = "EasyWindTurbine2",
            category = "electronics-or-handcrafting",
            energy_required = 10,
            ingredients = {
                {type = "item", name = "electric-engine-unit", amount = 5},
                {type = "item", name = "advanced-circuit", amount = 5},
                {type = "item", name = "plastic-bar", amount = 20},
                {type = "item", name = "battery", amount = 10},
            },
            results = {{type="item", name= "EasyWindTurbine2", amount=1}},
            enabled = false
        },
        {
            type = "recipe",
            name = "EasyWindTurbine3",
            category = "electronics-or-handcrafting",
            energy_required = 10,
            ingredients = {
                {type = "item", name = "processing-unit", amount = 5},
                {type = "item", name = "electric-engine-unit", amount = 10},
                {type = "item", name = "low-density-structures", amount = 10},
                {type = "item", name = "refined-concrete", amount = 20},
            },
            results = {{type="item", name= "EasyWindTurbine3", amount=1}},
            enabled = false
        },
        --[[
        {
            type = "recipe",
            name = "EasyWindTurbine4",
            category = "electronics-or-handcrafting",
            energy_required = 10,
            ingredients = {
                {type = "item", name = "electric-engine-unit", amount = 5},
                {type = "item", name = "advanced-circuit", amount = 5},
                {type = "item", name = "plastic-bar", amount = 20},
                {type = "item", name = "battery", amount = 10},
            },
            results = {{type="item", name= "EasyWindTurbine2", amount=1}},
            enabled = false
        },
        {
            type = "recipe",
            name = "EasyWindTurbine5",
            category = "electronics-or-handcrafting",
            energy_required = 10,
            ingredients = {
                {type = "item", name = "processing-unit", amount = 5},
                {type = "item", name = "electric-engine-unit", amount = 10},
                {type = "item", name = "low-density-structures", amount = 10},
                {type = "item", name = "refined-concrete", amount = 20},
            },
            results = {{type="item", name= "EasyWindTurbine3", amount=1}},
            enabled = false
        },]]
    })
end
if SS["EasyWindTurbine"].value == "Upgrading" then
    data:extend({
        {
            type = "recipe",
            name = "EasyWindTurbine2",
            category = "electronics-or-handcrafting",
            energy_required = 10,
            ingredients = {
                {type = "item", name = "electric-engine-unit", amount = 5},
                {type = "item", name = "advanced-circuit", amount = 5},
                {type = "item", name = "plastic-bar", amount = 20},
                {type = "item", name = "battery", amount = 10},
            },
            results = {{type="item", name= "EasyWindTurbine2", amount=1}},
            enabled = false
        },
        {
            type = "recipe",
            name = "EasyWindTurbine3",
            category = "electronics-or-handcrafting",
            energy_required = 10,
            ingredients = {
                {type = "item", name = "processing-unit", amount = 5},
                {type = "item", name = "electric-engine-unit", amount = 10},
                {type = "item", name = "low-density-structures", amount = 10},
                {type = "item", name = "refined-concrete", amount = 20},
            },
            results = {{type="item", name= "EasyWindTurbine3", amount=1}},
            enabled = false
        },--[[
        {
            type = "recipe",
            name = "EasyWindTurbine4",
            category = "electronics-or-handcrafting",
            energy_required = 10,
            ingredients = {
                {type = "item", name = "electric-engine-unit", amount = 5},
                {type = "item", name = "advanced-circuit", amount = 5},
                {type = "item", name = "plastic-bar", amount = 20},
                {type = "item", name = "battery", amount = 10},
            },
            results = {{type="item", name= "EasyWindTurbine2", amount=1}},
            enabled = false
        },
        {
            type = "recipe",
            name = "EasyWindTurbine5",
            category = "electronics-or-handcrafting",
            energy_required = 10,
            ingredients = {
                {type = "item", name = "processing-unit", amount = 5},
                {type = "item", name = "electric-engine-unit", amount = 10},
                {type = "item", name = "low-density-structures", amount = 10},
                {type = "item", name = "refined-concrete", amount = 20},
            },
            results = {{type="item", name= "EasyWindTurbine3", amount=1}},
            enabled = false
        },]]
    })
end