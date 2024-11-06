return {
  'folke/trouble.nvim',
  cmd = { 'Trouble' },
  opts = {},
  keys = {
    { '<leader>qt', ':Trouble diagnostics toggle focus=true<CR>', desc = 'Trouble: Diagnostics' },
    { '<leader>qb', ':Trouble diagnostics toggle focus=true filter.buf=0<CR>', desc = 'Trouble: Buffer diagnostics' },
    { '<leader>ql', ':Trouble lsp toggle focus=true win.position=bottom<CR>', desc = 'Trouble: LSP defs/refs/...' },
    { '<leader>qq', ':Trouble qflist toggle focus=true<CR>', desc = 'Trouble: Quickfix list' },
    --{ '<leader>qs', ':Trouble symbols toggle focus=true<CR>', desc = 'Trouble: Symbols' },
    --{ '<leader>qo', ':Trouble loclist toggle focus=true<CR>', desc = 'Trouble: Locations list' },
    {
      '[q',
      function()
        if require('trouble').is_open() then
          require('trouble').prev({ skip_groups = true, jump = true })
        else
          vim.diagnostic.goto_prev()
        end
      end,
      desc = 'Previous diagnostic',
    },
    {
      ']q',
      function()
        if require('trouble').is_open() then
          require('trouble').next({ skip_groups = true, jump = true })
        else
          vim.diagnostic.goto_next()
        end
      end,
      desc = 'Next quickfix',
    },
  },
}
