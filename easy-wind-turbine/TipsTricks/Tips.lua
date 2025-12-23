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
		dependencies = {"TurbineInfo"},
		order = "1AB",
		indent = 1,
	},
})