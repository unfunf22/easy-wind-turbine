data:extend({
	{
		type = "tips-and-tricks-item-category",
		name = "EasyWindTurbines",
		order = "1Z-[EasyWindTurbines]",
	},
	{
		type = "tips-and-tricks-item",
		name = "TurbineInfo",
		category = "EasyWindTurbines",
		is_title = true,
		order = "1AA",
		starting_status = "unlocked",
	},
	{
		type = "tips-and-tricks-item",
		name = "TurbineSettings",
		category = "EasyWindTurbines",
		order = "1AB",
		indent = 1,
		trigger = {
			type = "craft-item",
			item = "EasyWindTurbine1",
			event_type = "crafting-finished",
			count = 1,
		},
	},
})