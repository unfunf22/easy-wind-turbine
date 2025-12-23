data:extend({
    {
        type = "string-setting",
        name = "EasyWindTurbine",
        setting_type = "startup",
        default_value = "Upgrading",
        allowed_values = {"Upgrading", "Crafting"},
        order = "1-1", "Upgrades"
    },
	{
        type = "int-setting",
        name = "FluidBoxAmountValueSetting",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 1,
        order = "1-2", "FluidBoxAmountValue"
    },
    {
        type = "int-setting",
        name = "SteamAmountValueSetting",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 1,
        order = "1-3", "SteamAmountValue"
    },
    {
        type = "int-setting",
        name = "Interval",
        setting_type = "startup",
        default_value = 60,
        minimum_value = 1,
        order = "1-4", "Interval"
    },
    {
        type = "int-setting",
        name = "Tier-1",
        setting_type = "startup",
        default_value = 1000,
        minimum_value = 1,
        order = "2-1", "Tier-1"
    },
    {
        type = "int-setting",
        name = "Tier-2",
        setting_type = "startup",
        default_value = 2000,
        minimum_value = 1,
        order = "2-2", "Tier-2"
    },
    {
        type = "int-setting",
        name = "Tier-3",
        setting_type = "startup",
        default_value = 3000,
        minimum_value = 1,
        order = "2-3", "Tier-3"
    },
    {
        type = "int-setting",
        name = "Tier-4",
        setting_type = "startup",
        default_value = 4000,
        minimum_value = 1,
        order = "2-4", "Tier-4"
    },
    {
        type = "int-setting",
        name = "Tier-5",
        setting_type = "startup",
        default_value = 5000,
        minimum_value = 1,
        order = "2-5", "Tier-5"
    },
	--[[
	{--this is for testing only
        type = "double-setting",
        name = "FluidUsagePerTickX",
        setting_type = "startup",
        default_value = 0.0,
        minimum_value = 0.0,
        order = "3", "Tier-6"
    },
	{
        type = "double-setting",
        name = "EffenciecyX",
        setting_type = "startup",
        default_value = 0.0,
        minimum_value = 0.0,
        order = "4", "Tier-6"
    },
    ]]
})