-- https://github.com/nvim-lualine/lualine.nvim
return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    options = {
      icons_enabled = true,
      theme = 'tokyonight-night',
      --section_separators = { left = '', right = '' },
      --component_separators = { left = '', right = '' },
      disabled_filetypes = {
        'alpha',
        'diff',
        'diffpanel_3',
        'neo-tree',
        'undotree',
      },
    },
    extensions = {
      'fugitive',
      'lazy',
      'mason',
      --'neo-tree',
      'oil',
      'quickfix',
      --'trouble',
    },
  },
}
