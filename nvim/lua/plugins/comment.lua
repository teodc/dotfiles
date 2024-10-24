-- https://github.com/numToStr/Comment.nvim
return {
  'numToStr/Comment.nvim',
  opts = {},
  config = function()
    local opts = { noremap = true, silent = true }
    vim.keymap.set('n', '<leader>m', require('Comment.api').toggle.linewise.current, opts)
    vim.keymap.set('v', '<leader>m', "<ESC>:lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)
  end,
}
