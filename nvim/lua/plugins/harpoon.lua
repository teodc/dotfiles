-- https://github.com/ThePrimeagen/harpoon
return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require('harpoon')

    -- Required
    harpoon:setup()

    vim.keymap.set('n', '<leader>aa', function()
      harpoon:list():add()
    end, { noremap = true, silent = true, desc = 'Make buffer harpoonable' })

    vim.keymap.set('n', '<leader>al', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { noremap = true, silent = true, desc = 'List harpoonable buffers' })

    vim.keymap.set('n', '<leader>1', function()
      harpoon:list():select(1)
    end, { noremap = true, silent = true, desc = 'Harpoon 1st buffer' })

    vim.keymap.set('n', '<leader>2', function()
      harpoon:list():select(2)
    end, { noremap = true, silent = true, desc = 'Harpoon 2nd buffer' })

    vim.keymap.set('n', '<leader>3', function()
      harpoon:list():select(3)
    end, { noremap = true, silent = true, desc = 'Harpoon 3rd buffer' })

    vim.keymap.set('n', '<leader>4', function()
      harpoon:list():select(4)
    end, { noremap = true, silent = true, desc = 'Harpoon 4th buffer' })

    -- vim.keymap.set('n', '<leader>5', function()
    --   harpoon:list():select(5)
    -- end, { noremap = true, silent = true, desc = 'Harpoon 5th buffer' })

    -- vim.keymap.set('n', '<leader>6', function()
    --   harpoon:list():select(6)
    -- end, { noremap = true, silent = true, desc = 'Harpoon 6th buffer' })

    vim.keymap.set('n', '<leader>ap', function()
      harpoon:list():prev()
    end, { noremap = true, silent = true, desc = 'Harpoon previous buffer' })

    vim.keymap.set('n', '<leader>an', function()
      harpoon:list():next()
    end, { noremap = true, silent = true, desc = 'Harpooon next buffer' })
  end,
}
