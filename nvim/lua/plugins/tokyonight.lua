-- https://github.com/folke/tokyonight.nvim
return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    -- Use italic only for comments
    styles = {
      comments = { italic = true },
      keywords = { italic = false },
      functions = {},
      variables = {},
    },
    -- -- Change the "hint" color to the "orange" color, and make the "error" color bright red
    -- on_colors = function(colors)
    --   colors.hint = colors.orange
    --   colors.error = '#ff0000'
    -- end
  },
  init = function()
    vim.cmd.colorscheme('tokyonight-night')
    vim.cmd.hi('Comment gui=none')
  end,
}
