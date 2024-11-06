-- https://github.com/folke/flash.nvim
return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  ---@type Flash.Config
  opts = {
    search = {
      multi_window = false, -- Search in all windows
      wrap = true, -- When `false`, find only matches in the given direction
    },
    highlight = {
      backdrop = false, -- Show a backdrop with hl FlashBackdrop
    },
    modes = {
      search = {
        enabled = false, -- Activate Flash during regular search by default
      },
      char = {
        enabled = false, -- Activate Flash with `f`, `F`, `t`, `T`, `;` and `,` motions
        jump_labels = false, -- Show jump labels
        multi_line = true, -- Set to `false` to use the current line only
      },
    },
    prompt = {
      enabled = false, -- Use `require('flash').prompt()` to get the prompt text
    },
  },
  -- stylua: ignore
  keys = {
    { 's', mode = { 'n', 'x', 'o' }, function() require('flash').jump() end, desc = 'Flash' },
    { 'S', mode = { 'n' }, function() require('flash').jump({ pattern = vim.fn.expand("<cword>") }) end, desc = 'Flash current word' },
    { 'R', mode = { 'n', 'x', 'o' }, function() require('flash').treesitter() end, desc = 'Flash Treesitter node' },
    --{ 'r', mode = { 'o' }, function() require('flash').remote() end, desc = 'Remote Flash' },
    --{ 'R', mode = { 'o', 'x' }, function() require('flash').treesitter_search() end, desc = 'Flash Treesitter search' },
    --{ '<C-s>', mode = { 'c' }, function() require('flash').toggle() end, desc = 'Toggle Flash search' },
  },
}
