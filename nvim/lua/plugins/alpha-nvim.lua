-- https://github.com/goolord/alpha-nvim
return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    -- Some ascii arts for Neovim: https://github.com/MaximilianLloyd/ascii.nvim
    dashboard.section.header.val = {
      [[                                                 ]],
      [[                                                 ]],
      [[                                                 ]],
      [[███    ██ ███████  ██████  ██    ██ ██ ███    ███]],
      [[████   ██ ██      ██    ██ ██    ██ ██ ████  ████]],
      [[██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██]],
      [[██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██]],
      [[██   ████ ███████  ██████    ████   ██ ██      ██]],
      [[                                                 ]],
      [[                                                 ]],
      [[                                                 ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button('n', '  New file', ':ene <CR>'),
      dashboard.button('o', '󱧷  Open file', ':Telescope find_files <CR>'),
      dashboard.button('r', '  Recent files', ':Telescope oldfiles <CR>'),
      dashboard.button('f', '  Find text', ':Telescope live_grep <CR>'),
      dashboard.button('b', '󰸖  Bookmarks', ':Telescope marks <CR>'),
      dashboard.button('l', '󰒲  Lazy', ':Lazy <CR>'),
      dashboard.button('m', '  Mason', ':Mason <CR>'),
      dashboard.button('q', '  Quit', ':qa <CR>'),
    }

    alpha.setup(dashboard.config)
  end,
}
