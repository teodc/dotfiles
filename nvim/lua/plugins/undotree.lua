-- https://github.com/mbbill/undotree
return {
  'mbbill/undotree',
  opts = {},
  init = function()
    vim.g.undotree_WindowLayout = 4
    vim.g.undotree_SplitWidth = 40
    vim.g.undotree_DiffpanelHeight = 8
    vim.g.undotree_DiffAutoOpen = 1
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_DiffCommand = 'diff'
    vim.g.undotree_RelativeTimestamp = 1
    vim.g.undotree_ShortIndicators = 0
    vim.g.undotree_HelpLine = 0
  end,
  config = function()
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { noremap = true, silent = true, desc = 'Undotree' })
  end,
}
