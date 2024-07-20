local wezterm = require 'wezterm'

local config = {}

config.color_scheme = 'nightfox'
config.window_background_opacity = 1
config.font_size = 10
config.font = wezterm.font 'Fira Code'
config.default_domain = 'WSL:Ubuntu'

config.keys = {
  {key="t", mods="CTRL|SHIFT", action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
  {key="f", mods="CTRL|META", action=wezterm.action.ToggleFullScreen},
  {key="|", mods="CTRL|SHIFT", action=wezterm.action.SplitHorizontal{domain = 'CurrentPaneDomain'}}
}
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

return config
