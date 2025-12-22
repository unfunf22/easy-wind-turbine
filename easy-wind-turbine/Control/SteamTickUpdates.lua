require "util"
---@class LuaSettings
local SS = settings.startup
local Tier_1 = SS["Tier-1"].value
local Tier_2 = SS["Tier-2"].value
local Tier_3 = SS["Tier-3"].value
local Tier_4 = SS["Tier-4"].value
local Tier_5 = SS["Tier-5"].value
local SteamAmountValue = SS["SteamAmountValueX"].value
local SteamRefillValueMultiplier = SS["SteamRefillValueMultiplierX"].value
local interval = SS["Interval"].value --refresh rate at which steam is getting reffiled this value is tied to the UPS that this game uses.

script.on_event(defines.events.on_tick, function(event)
    if event.tick % (interval * 60) == 0 then
        refill_turbines()
    end
end)

function refill_turbines()
    for _, surface in pairs(game.surfaces) do
        local turbines = surface.find_entities_filtered{name = {"EasyWindTurbine1", "EasyWindTurbine2", "EasyWindTurbine3", "EasyWindTurbine4", "EasyWindTurbine5"}}
        for _, turbine in ipairs(turbines) do
            turbine.fluidbox[1] = {name = "steam", amount = Tier_1 * SteamAmountValue * SteamRefillValueMultiplier, temperature = 100}
            turbine.fluidbox[1] = {name = "steam", amount = Tier_2 * SteamAmountValue * SteamRefillValueMultiplier, temperature = 100}
            turbine.fluidbox[1] = {name = "steam", amount = Tier_3 * SteamAmountValue * SteamRefillValueMultiplier, temperature = 100}
            turbine.fluidbox[1] = {name = "steam", amount = Tier_4 * SteamAmountValue * SteamRefillValueMultiplier, temperature = 100}
            turbine.fluidbox[1] = {name = "steam", amount = Tier_5 * SteamAmountValue * SteamRefillValueMultiplier, temperature = 100}
            turbine.active = true
        end
    end
end

script.on_event(defines.events.on_built_entity, function(event)
    local entity = event.created_entity or event.entity
    if not (entity and entity.valid) then return end

    local Tier_Value = ({
        EasyWindTurbine1 = SS["Tier-1"].value,
        EasyWindTurbine2 = SS["Tier-2"].value,
        EasyWindTurbine3 = SS["Tier-3"].value,
        EasyWindTurbine4 = SS["Tier-4"].value,
        EasyWindTurbine5 = SS["Tier-5"].value
    })[entity.name]

    if not Tier_Value or Tier_Value <= 0 then return end
    entity.fluidbox[1] = {
        name = "steam",
        amount = Tier_Value * SteamAmountValue * SteamRefillValueMultiplier,
        temperature = 100
    }

    entity.active = true
end)


script.on_event(defines.events.on_robot_built_entity, function(event)
	local entity = event.created_entity or event.entity
    if not (entity and entity.valid) then return end

    local Tier_Value = ({
        EasyWindTurbine1 = SS["Tier-1"].value,
        EasyWindTurbine2 = SS["Tier-2"].value,
        EasyWindTurbine3 = SS["Tier-3"].value,
        EasyWindTurbine4 = SS["Tier-4"].value,
        EasyWindTurbine5 = SS["Tier-5"].value
    })[entity.name]

    if not Tier_Value or Tier_Value <= 0 then return end
    entity.fluidbox[1] = {
        name = "steam",
        amount = Tier_Value * SteamAmountValue * SteamRefillValueMultiplier,
        temperature = 100
    }

    entity.active = true
end)
