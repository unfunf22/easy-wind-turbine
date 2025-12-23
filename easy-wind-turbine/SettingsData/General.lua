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
        name = "FluidBoxAmountValueX",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 1,
        order = "1-2", "FluidBoxAmountValueX"
    },
	{
        type = "int-setting",
        name = "FluidBoxAmountValueMultiplierX",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 1,
        order = "1-3", "FluidBoxAmountValueMultiplierX"
    },
    {
        type = "int-setting",
        name = "SteamAmountValueX",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 1,
        order = "1-4", "SteamAmountValueX"
    },
	{
        type = "int-setting",
        name = "SteamRefillValueMultiplierX",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 1,
        order = "1-5", "SteamRefillValueMultiplierX"
    },
    {
        type = "int-setting",
        name = "Interval",
        setting_type = "startup",
        default_value = 60,
        minimum_value = 1,
        order = "1-6", "Interval"
    },
    {
        type = "int-setting",
        name = "Tier-1",
        setting_type = "startup",
        default_value = 100,
        minimum_value = 1,
        order = "2-1", "Tier-1"
    },
    {
        type = "int-setting",
        name = "Tier-2",
        setting_type = "startup",
        default_value = 200,
        minimum_value = 1,
        order = "2-2", "Tier-2"
    },
    {
        type = "int-setting",
        name = "Tier-3",
        setting_type = "startup",
        default_value = 300,
        minimum_value = 1,
        order = "2-3", "Tier-3"
    },
    {
        type = "int-setting",
        name = "Tier-4",
        setting_type = "startup",
        default_value = 400,
        minimum_value = 1,
        order = "2-4", "Tier-4"
    },
    {
        type = "int-setting",
        name = "Tier-5",
        setting_type = "startup",
        default_value = 500,
        minimum_value = 1,
        order = "2-5", "Tier-5"
    },
	--[[
	{
        type = "string-setting",
        name = "Info",
        setting_type = "startup",
        default_value = "",
		allow_blank = true,
        order = "1-7", "Info"
    },
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