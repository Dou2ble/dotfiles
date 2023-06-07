-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end


config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 30
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_ease_out = "Linear"

-- Disable tabbing
config.enable_tab_bar = false

-- Disable warning before close
config.window_close_confirmation = "NeverPrompt"

-- Disable stupid padding
config.window_padding = {
  left = 0,
  right = 12, -- Required for the scrollbar to be visible
  top = 0,
  bottom = 0,
}

-- Enable scrollbar
config.enable_scroll_bar = true

-- Change to a better font
config.font = wezterm.font_with_fallback {"Hack Nerd Font", "Hack"}

-- Dark blueberry theme fron vscode
config.colors = {
  foreground = "#CCCCCC",
  background = "#191724",
  ansi = {
    "#676E95",
    "#FF5370",
    "#C3E88D",
    "#FFCB6B",
    "#82AAFF",
    "#C792EA",
    "#89DDFF",
    "#FFFFFF",
  },
  brights = {
    "#676E95",
    "#FF5370",
    "#C3E88D",
    "#FFCB6B",
    "#82AAFF",
    "#C792EA",
    "#89DDFF",
    "#FFFFFF",
  },

  -- Set the cursor and selection to be same color as text 
  cursor_bg = "#CCCCCC",
  cursor_border = "#CCCCCC",
  selection_bg = "#CCCCCC",
  compose_cursor = "#CCCCCC",

}

-- and finally, return the configuration to wezterm
return config

