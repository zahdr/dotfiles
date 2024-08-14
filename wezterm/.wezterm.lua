local wezterm = require "wezterm"

local config = wezterm.config_builder()
local fontToUse = "UbuntuMono Nerd Font"
local fontWeight = "Regular"

-- general settings
config.color_scheme = "rose-pine"
config.enable_scroll_bar = false
config.enable_tab_bar = false
config.freetype_load_target = "HorizontalLcd"
config.use_resize_increments = true
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- fonts
config.font = wezterm.font (fontToUse, { weight=fontWeight })
config.font_size = 13
config.dpi = 96.0
config.font_rules = {
  {
    intensity = "Bold",
    italic = false,
    font = wezterm.font (
      fontToUse,
      { weight=fontWeight, bold=true }
    ),
  },
  {
    intensity = "Bold",
    italic = true,
    font = wezterm.font (
      fontToUse,
      { weight=fontWeight, bold=true }
    ),
  },
  {
    intensity = "Normal",
    italic = true,
    font = wezterm.font (
      fontToUse,
      { weight=fontWeight }
    ),
  },
  {
    intensity = "Half",
    italic = true,
    font = wezterm.font (
      fontToUse,
      { weight=fontWeight }
    ),
  },
  {
    intensity = "Half",
    italic = false,
    font = wezterm.font (
      fontToUse,
      { weight=fontWeight }
    ),
  },
  {
    intensity = "Normal",
    italic = false,
    font = wezterm.font (
      fontToUse,
      { weight=fontWeight }
    ),
  },
}

return config
