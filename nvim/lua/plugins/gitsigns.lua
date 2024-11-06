-- https://github.com/lewis6991/gitsigns.nvim
return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    signs_staged = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    signs_staged_enable = true,
    signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
    numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
    linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
  },
  on_attach = function(buffer)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, desc)
      vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
    end

    -- stylua: ignore start
    map('n', ']h', function() if vim.wo.diff then vim.cmd.normal({ ']c', bang = true }) else gs.nav_hunk('next') end end, 'Next Hunk')
    map('n', '[h', function() if vim.wo.diff then vim.cmd.normal({ '[c', bang = true }) else gs.nav_hunk('prev') end end, 'Prev Hunk')
    map('n', ']H', function() gs.nav_hunk('last') end, 'Last Hunk')
    map('n', '[H', function() gs.nav_hunk('first') end, 'First Hunk')
    map('n', '<leader>vb', function() gs.blame_line({ full = true }) end, 'Blame Line (VCS)')
    map('n', '<leader>vB', function() gs.blame() end, 'Blame Buffer (VCS)')
    map('n', '<leader>vd', gs.diffthis, 'Diff This (VCS)')
    map('n', '<leader>vD', function() gs.diffthis('~') end, 'Diff This ~ (VCS)')
    -- stylua: ignore end
  end,
}
