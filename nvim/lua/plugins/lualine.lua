-- https://github.com/nvim-lualine/lualine.nvim
return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    options = {
      icons_enabled = true,
      theme = 'tokyonight',
      disabled_filetypes = {
        'alpha',
        'neo-tree',
      },
    },
    extensions = {
      'fugitive',
      'lazy',
      'mason',
      --'neo-tree',
      --'oil',
      'quickfix',
      --'trouble',
    },
  },
}
