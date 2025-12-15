script.on_event(defines.events.on_research_finished, function(event)
    local tech = event.research.force.technologies
    if event.research.name == "engine" then
        tech["EasyWindTurbine1"].enabled = true
    elseif event.research.name == "electric-engine" then
        tech["EasyWindTurbine2"].enabled = tech["EasyWindTurbine1"].researched
    elseif event.research.name == "processing-unit" then
        tech["EasyWindTurbine3"].enabled = tech["EasyWindTurbine2"].researched
    end
end)