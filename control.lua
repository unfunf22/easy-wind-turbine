require "util"
--hier neu 2.0

--mod check für spaceage.

function BuiltEntity(event)
--pace holder pipe for wind-turbines
if event.entity.name == "wind-turbine-1" or event.entity.name == "wind-turbine-2" or event.entity.name == "wind-turbine-3" then
		local e = event.entity
		local s = e.surface
		local X = e.position.x
		local Y = e.position.y
    local l = s.create_entity{name = "pipe", position = {X,Y}, force= game.forces.neutral}
		l.destructible = false
	end
end

--set tick and fill wind turbine with fuel every 60 seconds
local interval = 60  -- Intervall in Sec

script.on_event(defines.events.on_tick, function(event)
    if event.tick % (interval * 60) == 0 then  -- 60 Sec = 60 * 60 Ticks
        on_tick_event()
    end
end)
--refill every wind-turbine. on nauvis.
function on_tick_event()
    -- Zugriff auf die erste Oberfläche (Oberfläche 1)
    local surface1 = game.surfaces[1]
    if surface1 then
        local turbines1 = surface1.find_entities_filtered{name = {"wind-turbine-1", "wind-turbine-2", "wind-turbine-3"}}

        if #turbines1 > 0 then  -- Überprüfen, ob Windturbinen auf Oberfläche 1 vorhanden sind
            for _, turbine in ipairs(turbines1) do
                turbine.fluidbox[1] = { name = "steam", amount = 200, temperature = 100 }
            end
        end
    end

    -- Zugriff auf die zweite Oberfläche (Oberfläche 2)
    local surface2 = game.surfaces[2]
    if surface2 then
        local turbines2 = surface2.find_entities_filtered{name = {"wind-turbine-1", "wind-turbine-2", "wind-turbine-3"}}

        if #turbines2 > 0 then  -- Überprüfen, ob Windturbinen auf Oberfläche 2 vorhanden sind
            for _, turbine in ipairs(turbines2) do
                turbine.fluidbox[1] = { name = "steam", amount = 200, temperature = 100 }
            end
        end
    end

	-- Zugriff auf die zweite Oberfläche (Oberfläche 3)
    local surface3 = game.surfaces[3]
    if surface3 then
        local turbines3 = surface3.find_entities_filtered{name = {"wind-turbine-1", "wind-turbine-2", "wind-turbine-3"}}

        if #turbines3 > 0 then  -- Überprüfen, ob Windturbinen auf Oberfläche 3 vorhanden sind
            for _, turbine in ipairs(turbines3) do
                turbine.fluidbox[1] = { name = "steam", amount = 200, temperature = 100 }
            end
        end
    end

	-- Zugriff auf die zweite Oberfläche (Oberfläche 4)
    local surface4 = game.surfaces[4]
    if surface4 then
        local turbines4 = surface4.find_entities_filtered{name = {"wind-turbine-1", "wind-turbine-2", "wind-turbine-3"}}

        if #turbines4 > 0 then  -- Überprüfen, ob Windturbinen auf Oberfläche 4 vorhanden sind
            for _, turbine in ipairs(turbines4) do
                turbine.fluidbox[1] = { name = "steam", amount = 200, temperature = 100 }
            end
        end
    end
end

--this is importent for scenario´s.
script.on_event(defines.events.on_research_finished, function(event)
-- Enable wind turbine technologies based on completed research.
local tech = event.research.force.technologies
    if event.research.name == "engine" then
        tech["wind-turbine-1"].enabled = true
    elseif event.research.name == "electric-engine" then
        tech["wind-turbine-2"].enabled = tech["wind-turbine-1"].researched
    elseif event.research.name == "processing-unit" then
        tech["wind-turbine-3"].enabled = tech["wind-turbine-2"].researched
    end
end)