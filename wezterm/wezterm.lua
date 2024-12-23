local wt = require("wezterm")

local config = wt.config_builder()


config.font = wt.font("FiraCode Nerd Font Mono")
config.font_size = 14

config.enable_tab_bar = false

return config
