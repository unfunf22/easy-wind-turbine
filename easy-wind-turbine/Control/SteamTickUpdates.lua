require "util"
---@class LuaSettings
local SS = settings.startup

script.on_event(defines.events.on_built_entity, BuiltEntity)
script.on_event(defines.events.on_robot_built_entity, BuiltEntity)

local SteamAmountValue = SS["SteamAmountValueX"].value
local SteamRefillValueMultpicator = SS["SteamRefillValueMultpicatorX"].value

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
            turbine.fluidbox[1] = {name = "steam", amount = SteamAmountValue * SteamRefillValueMultpicator, temperature = 100}
            turbine.active = true
        end
    end
end