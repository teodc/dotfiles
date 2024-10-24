-- https://github.com/echasnovski/mini.nvim
return {
  {
    -- https://github.com/echasnovski/mini.ai
    -- Better Around/Inside textobjects
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
    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    -- Examples:
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    'echasnovski/mini.surround',
    version = '*',
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
