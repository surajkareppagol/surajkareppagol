local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font          = "CodeNewRoman Nerd Font 10"

theme.bg_normal     = "#1C202F"
theme.bg_focus      = "#202637"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#4C657B"
theme.fg_focus      = "#7DBBD1"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = dpi(2)
theme.border_width  = dpi(2)
theme.border_normal = "#1C202F"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(20)
theme.menu_width  = dpi(150)

return theme

