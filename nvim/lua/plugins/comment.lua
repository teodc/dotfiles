-- https://github.com/numToStr/Comment.nvim
return {
  'numToStr/Comment.nvim',
  opts = {},
  config = function()
    local api = require('Comment.api')
    local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)

    -- TODO:
    -- For the comment selection, go back to using the string command,
    -- re-install undotree to find the deleted code,
    -- and try to add gv at the end to keep the selection

    vim.keymap.set('n', '<leader>m', function()
      api.toggle.linewise.current()
    end, { noremap = true, silent = true, desc = 'Comment line' })

    vim.keymap.set('v', '<leader>m', function()
      vim.api.nvim_feedkeys(esc, 'nx', false)
      api.toggle.linewise(vim.fn.visualmode())
    end, { noremap = true, silent = true, desc = 'Comment selection' })
  end,
}
