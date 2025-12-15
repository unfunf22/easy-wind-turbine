---@class data.RecipePrototype
local Recipe = data.raw["recipe"]
---@class LuaSettings
local SS = settings.startup

if mods["space-age"]then
    if SS["Upgrades"].value == true then
        Recipe["EasyWindTurbine1"].category = "electronics-or-handcrafting"
        Recipe["EasyWindTurbine2"].category = "electronics-or-handcrafting"
        Recipe["EasyWindTurbine3"].category = "electronics-or-handcrafting"
    end
    if SS["Upgrades"].value == false then
        Recipe["UpgradeWindTurbine2"].category = "electronics-or-handcrafting"
        Recipe["UpgradeWindTurbine3"].category = "electronics-or-handcrafting"
    end
end