-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    -- '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree filesystem reveal<CR>', desc = 'Toggle Neotree', silent = true },
  },
  opts = {
    close_if_last_window = false,
    default_component_configs = {
      git_status = {
        symbols = {
          added = '✚',
          modified = '',
          deleted = '✖',
          renamed = '󰁕',
          untracked = '',
          ignored = '',
          unstaged = '󰄱',
          staged = '',
          conflict = '',
        },
      },
      file_size = { enabled = false },
      type = { enabled = false },
      last_modified = { enabled = false },
      created = { enabled = false },
      symlink_target = { enabled = false },
    },
    window = {
      mappings = {
        ['<space>'] = { 'toggle_node', nowait = true }, -- Disable `nowait` if you have existing combos starting with this char that you want to use
        ['l'] = 'open',
        ['h'] = 'close_node',
      },
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        never_show = {
          '.DS_Store',
          'thumbs.db',
        },
      },
      window = {
        position = 'left',
        width = 40,
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
