local wilder = require("wilder")
wilder.setup({modes = {":", "/", "?"}})
wilder.set_option('renderer', wilder.popupmenu_renderer(
  wilder.popupmenu_border_theme({
    highlights = {
      border = 'Normal', -- highlight to use for the border
    },
    border = 'rounded',

    highlighter = wilder.basic_highlighter(),
    min_width = '100%', -- minimum height of the popupmenu, can also be a number
    max_height = '50%', -- to set a fixed height, set max_height to the same value
    reverse = 1,        -- if 1, shows the candidates from bottom to top

    left = {' ', wilder.popupmenu_devicons()},
    right = {' ', wilder.popupmenu_scrollbar()},
  })
))
