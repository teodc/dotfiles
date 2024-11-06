-- https://github.com/echasnovski/mini.nvim
return {
  {
    -- https://github.com/echasnovski/mini.ai
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    'echasnovski/mini.ai',
    version = '*',
    opts = {
      n_lines = 500, -- Number of lines within which textobject is searched
    },
  },
  {
    -- https://github.com/echasnovski/mini.surround
    -- Examples:
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    'echasnovski/mini.surround',
    version = '*',
    opts = {
      -- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
      highlight_duration = 500,
      -- Module mappings (use `''` to disable one)
      mappings = {
        add = 'sa', -- Add surrounding in Normal and Visual modes
        delete = 'sd', -- Delete surrounding
        replace = 'sr', -- Replace surrounding
        find = '', -- Find surrounding (to the right)
        find_left = '', -- Find surrounding (to the left)
        highlight = '', -- Highlight surrounding
        update_n_lines = '', -- Update `n_lines`
        suffix_last = 'l', -- Suffix to search with "prev" method
        suffix_next = 'n', -- Suffix to search with "next" method
      },
      -- Number of lines within which surrounding is searched
      n_lines = 100,
      -- Whether to respect selection type:
      -- - Place surroundings on separate lines in linewise mode
      -- - Place surroundings on each line in blockwise mode
      respect_selection_type = false,
      -- How to search for surrounding (first inside current line, then inside neighborhood).
      -- One of 'cover', 'cover_or_next', 'cover_or_prev', 'cover_or_nearest', 'next', 'prev', 'nearest'.
      -- See `:h MiniSurround.config` for more details.
      search_method = 'cover',
    },
  },
  -- {
  --   -- https://github.com/echasnovski/mini.pairs
  --   'echasnovski/mini.pairs',
  --   version = '*',
  -- },
  -- {
  --   -- https://github.com/echasnovski/mini.statusline
  --   'echasnovski/mini.statusline',
  --   version = '*',
  --   opts = {
  --     use_icons = vim.g.have_nerd_font,
  --   },
  -- },
  -- {
  --   -- https://github.com/echasnovski/mini.tabline
  --   'echasnovski/mini.tabline',
  --   version = '*',
  --   opts = {
  --     show_icons = true, -- Whether to show file icons
  --     set_vim_settings = true, -- Whether to set Vim's settings for tabline (make it always shown and allow hidden buffers)
  --   },
  -- },
}
