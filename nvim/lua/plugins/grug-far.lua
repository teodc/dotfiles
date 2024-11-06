-- https://github.com/MagicDuck/grug-far.nvim
return {
  'MagicDuck/grug-far.nvim',
  cmd = 'GrugFar',
  opts = {
    engine = 'ripgrep', -- ripgrep|astgrep|nil (nil defaults to ripgrep)
  },
  keys = {
    {
      '<leader>x',
      function()
        local grug = require('grug-far')
        local ext = vim.bo.buftype == '' and vim.fn.expand('%:e')
        grug.open({
          transient = true,
          prefills = {
            filesFilter = ext and ext ~= '' and '*.' .. ext or nil,
          },
        })
      end,
      mode = { 'n', 'v' },
      desc = 'Search & Replace',
    },
  },
}
