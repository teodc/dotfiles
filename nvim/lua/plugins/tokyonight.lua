-- https://github.com/folke/tokyonight.nvim
return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    style = 'night',
    -- Use italic only for comments
    styles = {
      comments = { italic = true },
      keywords = { italic = false },
      functions = {},
      variables = {},
    },
  },
  init = function()
    vim.cmd.colorscheme('tokyonight-night')
    vim.cmd.hi('Comment gui=none')
  end,
}
