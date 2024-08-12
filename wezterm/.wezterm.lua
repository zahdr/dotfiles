local wezterm = require "wezterm"

local config = wezterm.config_builder()
config.color_scheme = "rose-pine"

-- general settings
config.enable_tab_bar = false
config.enable_scroll_bar = false
config.use_resize_increments = true
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- fonts
config.font = wezterm.font ("Noto Sans Mono", { weight="Medium" })
config.font_size = 11
config.dpi = 96.0
config.font_rules = {
  {
    intensity = "Bold",
    italic = false,
    font = wezterm.font (
      "Noto Sans Mono",
      { weight="Medium", bold=true }
    ),
  },
  {
    intensity = "Bold",
    italic = true,
    font = wezterm.font (
      "Noto Sans Mono",
      { weight="Medium", bold=true }
    ),
  },
  {
    intensity = "Normal",
    italic = true,
    font = wezterm.font (
      "Noto Sans Mono",
      { weight="Medium" }
    ),
  },
  {
    intensity = "Half",
    italic = true,
    font = wezterm.font (
      "Noto Sans Mono",
      { weight="Medium" }
    ),
  },
  {
    intensity = "Half",
    italic = false,
    font = wezterm.font (
      "Noto Sans Mono",
      { weight="Medium" }
    ),
  },
  {
    intensity = "Normal",
    italic = false,
    font = wezterm.font (
      "Noto Sans Mono",
      { weight="Medium" }
    ),
  },
}

return config
