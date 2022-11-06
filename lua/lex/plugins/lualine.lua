-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- get lualine nightfly theme
local lualine_nightfly = require("lualine.themes.gruvbox_dark")

-- new colors for theme
-- the colors was modified and then i add a few, or check the lualine themes.
local new_colors = {
	blue = "#65D1FF",
	green = "#D79921",
	violet = "#858800",
	yellow = "#FFDA7B",
	black = "#000000",
  orange = "#CB4B16",
  red = "#DC322F",
  olive_green = "#859900",
  brwonie = "#A89984",
  bluebox = "#458588",
}

-- change nightlfy theme colors
lualine_nightfly.normal.a.bg = new_colors.orange
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.olive_green
lualine_nightfly.command = {
	a = {
		gui = "bold",
		bg = new_colors.bluebox,
		fg = new_colors.black, -- black
	},
}

-- configure lualine with modified theme
lualine.setup({
	options = {
		theme = lualine_nightfly,
	},
})
