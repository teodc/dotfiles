--
return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  vscode = true,
  ---@type Flash.Config
  opts = {
    search = {
      multi_window = true, -- search/jump in all windows
      wrap = false, -- when `false`, find only matches in the given direction
    },
    highlight = {
      backdrop = false, -- show a backdrop with hl FlashBackdrop
    },
    modes = {
      -- regular search with `/` or `?`
      search = {
        enabled = false, -- when `true`, flash will be activated during regular search by default
      },
      -- `f`, `F`, `t`, `T`, `;` and `,` motions
      char = {
        enabled = false,
      },
    },
    -- `require('flash').prompt()` to get the prompt text
    prompt = {
      enabled = true,
    },
  },
  -- stylua: ignore
  keys = {
    { '<leader>fs', mode = { 'n', 'x', 'o' }, function() require('flash').jump() end, desc = 'Flash' },
    { '<leader>ft', mode = { 'n', 'x', 'o' }, function() require('flash').treesitter() end, desc = 'Flash Treesitter' },
    { '<leader>fp', mode = { 'n', 'x', 'o' }, function() require('flash').prompt() end, desc = 'Flash Prompt' },
    -- { 'r', mode = { 'o' }, function() require('flash').remote() end, desc = 'Remote Flash' },
    -- { 'R', mode = { 'o', 'x' }, function() require('flash').treesitter_search() end, desc = 'Treesitter Search' },
    { '<leader>fx', mode = { 'n', 'c' }, function() require('flash').toggle() end, desc = 'Toggle Flash Search' },
  },
}
