-- https://github.com/mg979/vim-visual-multi
return {
  'mg979/vim-visual-multi',
  branch = 'master',
  init = function()
    vim.g.VM_mouse_mappings = 0
    vim.g.VM_default_mappings = 0
    vim.g.VM_add_cursor_at_pos_no_mappings = 1
    vim.g.VM_maps = nil
    vim.g.VM_maps = {
      ['Find Under'] = '',
      ['Find Subword Under'] = '',
    }
  end,
  config = function()
    -- stylua: ignore start
    vim.keymap.set('n', '<C-n>', '<Plug>(VM-Find-Under)', { noremap = true, desc = 'VM Find Under' }) -- replace C-n
    vim.keymap.set('v', '<C-n>', '<Plug>(VM-Find-Subword-Under)', { noremap = true, desc = 'VM Find Subword Under' }) -- replace visual C-n
    vim.keymap.set('n', '<leader>na', '<Plug>(VM-Select-All)', { noremap = true, desc = 'VM Select All' })
    vim.keymap.set('v', '<leader>na', '<Plug>(VM-Visual-All)', { noremap = true, desc = 'VM Visual All' })
    vim.keymap.set('n', '<leader>nr', '<Plug>(VM-Start-Regex-Search)', { noremap = true, desc = 'VM Start Regex Search' })
    vim.keymap.set('n', '<leader>np', '<Plug>(VM-Add-Cursor-At-Pos)', { noremap = true, desc = 'VM Add Cursor At Pos' })
    vim.keymap.set('n', '<leader>no', '<Plug>(VM-Toggle-Mappings)', { noremap = true, desc = 'VM Toggle Mappings' })
    -- stylua: ignore end
  end,
}
