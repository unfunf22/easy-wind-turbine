data:extend({
    {
        type = "int-setting",
        name = "Interval",
        setting_type = "startup",
        default_value = 60,
        minimum_value = 1,
        order = "7" , "Interval"
    },
    {
        type = "int-setting",
        name = "SteamAmountValueX",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 1,
        order = "3" , "SteamAmountValueX"
    },
	{
        type = "int-setting",
        name = "SteamRefillValueMultpicatorX",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 1,
        order = "4" , "SteamRefillValueMultpicatorX"
    },
	{
        type = "int-setting",
        name = "FluidBoxAmountValueX",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 1,
        order = "1" , "FluidBoxAmountValueX"
    },
	{
        type = "int-setting",
        name = "FluidBoxAmountValueMultiplicatorX",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 1,
        order = "2" , "FluidBoxAmountValueMultiplicatorX"
    },
	{
        type = "string-setting",
        name = "Info",
        setting_type = "startup",
        default_value = "",
		allow_blank = true,
        order = "8" , "Info"
    },
	
    {
        type = "string-setting",
        name = "EasyWindTurbine",
        setting_type = "startup",
        default_value = "Upgrading",
        allowed_values = {"Upgrading", "Crafting"},
        order = "9" , "Upgrades"
    },
})