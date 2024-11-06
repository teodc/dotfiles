-- https://github.com/folke/which-key.nvim
return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    ---@type wk.Win.opts
    win = {
      height = { min = 5, max = 25 },
      border = 'rounded',
      title = false,
    },
    layout = {
      width = { min = 30 },
      spacing = 3,
    },
    keys = {
      scroll_down = '<C-d>',
      scroll_up = '<C-u>',
    },
    icons = {
      mappings = false,
    },
  },
  keys = {
    {
      '<leader>?',
      function()
        require('which-key').show({ global = false })
      end,
      desc = 'Show local buffer keymaps',
    },
  },
}
