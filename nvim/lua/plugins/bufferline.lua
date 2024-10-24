-- https://github.com/akinsho/bufferline.nvim
return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = {
    'moll/vim-bbye',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('bufferline').setup({
      options = {
        mode = 'buffers', -- Set to "tabs" to only show tabpages instead
        themable = true, -- Allows highlight groups to be overriden i.e. sets highlights as default
        numbers = 'none', -- Can be "ordinal", "buffer_id", "both", function({ ordinal, id, lower, raise }): string,
        close_command = 'Bdelete! %d', -- Can be a string or a function, see "Mouse actions"
        path_components = 1, -- Show only the file name without the directory
        max_name_length = 30,
        max_prefix_length = 30, -- Prefix used when a buffer is de-duplicated
        tab_size = 21,
        --diagnostics = false,
        --diagnostics_update_in_insert = false,
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        persist_buffer_sort = true, -- Whether or not custom sorted buffers should persist
        separator_style = 'thin', -- Can be "thick", "thin", { 'any', 'any' }
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        show_tab_indicators = false,
        indicator = {
          icon = '', -- This should be omitted if indicator style is not 'icon'
          style = 'none', -- Can be 'icon', 'underline', 'none'
        },
        icon_pinned = '󰐃',
        minimum_padding = 1,
        maximum_padding = 5,
        maximum_length = 15,
        sort_by = 'insert_at_end',
      },
      highlights = {
        separator = {
          fg = '#414868',
        },
        buffer_selected = {
          bold = true,
          italic = false,
        },
        --separator_selected = {},
        --indicator_selected = {},
        --tab_selected = {},
        --background = {},
        --fill = {},
      },
    })
  end,
}
