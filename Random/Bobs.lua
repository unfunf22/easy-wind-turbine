--[[
---@Class RecipePrototype
local Recipe = data.raw["recipe"]
]]
--[[
if mods["bobplates"] then
    Remove("UpgradeWindTurbine3", "iron-gear-wheel")
    table.insert(Recipe["UpgradeWindTurbine3"].ingredients, {type="item", name= "bob-lead-plate", amount=20})
end
]]