return {
  'folke/persistence.nvim',
  event = 'BufReadPre',
  opts = {
    -- Minimum number of file buffers that need to be open to save.
    -- Set to 0 to always save.
    need = 1,
  },
  -- stylua: ignore
  keys = {
    { '<leader>zr', function() require('persistence').load() end, desc = 'Restore session' },
    { '<leader>zs', function() require('persistence').select() end, desc = 'Select session' },
    { '<leader>zl', function() require('persistence').load({ last = true }) end, desc = 'Restore last session' },
    { '<leader>zd', function() require('persistence').stop() end, desc = "Don't save current session" },
  },
}
