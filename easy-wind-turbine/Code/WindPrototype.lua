data:extend({
    {
        type = "fluid",
        name = "EasyWind",
        subgroup = "fluid",
        default_temperature = 15,
        max_temperature = 5000,
        heat_capacity = "100.0000kW",
        icon = "__base__/graphics/icons/fluid/steam.png",
        base_color = {0.5, 0.5, 0.5},
        flow_color = {1.0, 1.0, 1.0},
        order = "a[fluid]-a[air]-b[Wind]", --Purley for debugging
        gas_temperature = 15,
        auto_barrel = false
    }
})
data.raw.fluid["EasyWind"].hidden = true