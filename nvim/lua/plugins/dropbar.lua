-- https://github.com/Bekaboo/dropbar.nvim
return {
  'Bekaboo/dropbar.nvim',
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim', -- optional, but required for fuzzy finder support
  },
  config = function()
    require('dropbar').setup({
      bar = {
        padding = {
          left = 1,
          right = 1,
        },
      },
      menu = {
        quick_navigation = false,
        preview = false,
        scrollbar = {
          enable = false,
        },
        win_configs = {
          border = 'rounded',
        },
        keymaps = {
          ['h'] = function()
            local utils = require('dropbar.utils')
            local menu = utils.menu.get_current()
            if not menu then
              return
            end
            if menu.prev_menu then
              menu:close()
            else
              local bar = require('dropbar.utils.bar').get({ win = menu.prev_win })
              local barComponents = bar.components[1]._.bar.components
              for _, component in ipairs(barComponents) do
                if component.menu then
                  local idx = component._.bar_idx
                  menu:close()
                  require('dropbar.api').pick(idx - 1)
                end
              end
            end
          end,
          ['l'] = function()
            local utils = require('dropbar.utils')
            local menu = utils.menu.get_current()
            if not menu then
              return
            end
            local cursor = vim.api.nvim_win_get_cursor(menu.win)
            local component = menu.entries[cursor[1]]:first_clickable(cursor[2])
            if component then
              menu:click_on(component, nil, 1, 'l')
            end
          end,
        },
      },
      icons = {
        enable = true,
        ui = {
          bar = {
            separator = '  ',
            extends = '…',
          },
          menu = {
            separator = ' ',
            indicator = '  ',
          },
        },
      },
    })

    vim.keymap.set('n', '<leader>-', function()
      require('dropbar.api').pick()
    end, { noremap = true, silent = true, desc = 'Dropbar' })
  end,
}
