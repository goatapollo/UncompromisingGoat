name = "    Uncompromising Mode"
description = 
[[
󰀔 [ Version 1.0 : "Uncompromising Start" ]















							   ⬇Config⬇		 ⬇Infos⬇]]

author = "Uncompromising Team"
version = "1.0.0"

forumthread = ""

api_version = 10

dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
hamlet_compatible = false

forge_compatible = false

all_clients_require_mod = true 

icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = {
	"uncompromising",
	"DSTU",
	"collab",
	"overhaul",
	"hard",
	"difficult",
	"madness",
	"challenge",
	"hardcore"
}

priority = 10

game_modes =
{
	{
		name = "uncompromising_hardcore",
		label = "Hardcore",
		description = "Rollback is permanently disabled. No second chances.\n\n* Players leave a dead body upon death, which needs to be given a Telltale heart for ressurection.\n* Repair Touch Stones, attune effigies, and wear Life amulets to revive yourself.\n* If no living players remain, the world is deleted.",
		settings =
		{
			ghost_sanity_drain = true,
			portal_rez = false,
			level_type = "LEVELTYPE_FOREST",
			reset_time = { time = 10, loadingtime = 10 },
			hardcore = true
		},
	}
}

configuration_options =
{
	{
		name = "gamemode",
		label = "Mode",
		hover = "Choose gamemode. 1) Original Uncompromising version (default settings). 2) Mod is enabled after first Fuelweaver is defeated. 3) Choose custom settings.",
		options =
		{
			{description = "Uncompromising", data = 0}, -- TODO: When this is selected, disable the below ones (gray them out)
			{description = "Post Fuelweaver", data = 1},
			{description = "Custom", data = 2}, --TODO: On custom, enable editing the below settings
		},
		default = 0,
	},
	{
		name = "harder_recipes",
		label = "Harder Recipes",
		hover = "Some recipes become modified to be harder to craft.",
		options =
		{
			{description = "Disabled", data = false},
			{description = "Enabled", data = true},
		},
		default = true,
	},
	{
		name = "harder_monsters",
		label = "Harder Monsters",
		hover = "Monsters become stronger.",
		options =
		{
			{description = "Disabled", data = false},
			{description = "Enabled", data = true},
		},
		default = true,
	},
	{
		name = "harder_bosses",
		label = "Harder Bosses",
		hover = "Bosses become stronger.",
		options =
		{
			{description = "Disabled", data = false},
			{description = "Enabled", data = true},
		},
		default = true,
	},
	{
		name = "harder_shadows",
		label = "Harder Nightmare Creatures",
		hover = "New troubles rest withinin your mind.",
		options =
		{
			{description = "Disabled", data = false},
			{description = "Enabled", data = true},
		},
		default = true,
	},
	{
		name = "harder_weather",
		label = "Harder Weather",
		hover = "Nature becomes unforgiving.",
		options =
		{
			{description = "Disabled", data = false},
			{description = "Enabled", data = true},
		},
		default = true,
	},
	{
		name = "rare_food",
		label = "Rare Food",
		hover = "Food is harder to find now.",
		options =
		{
			{description = "Disabled", data = false},
			{description = "Enabled", data = true},
		},
		default = true,
	},
	{
		name = "character_changes",
		label = "Changed Characters",
		hover = "Survivals' power is not what it used to be.",
		options =
		{
			{description = "Disabled", data = false},
			{description = "Enabled", data = true},
		},
		default = true,
	},
	{
		name = "hardcore_mode",
		label = "Hardcore Mode",
		hover = "Life is precious now.",
		options =
		{
			{description = "Disabled", data = false},
			{description = "Enabled", data = true},
		},
		default = true,
	},
}