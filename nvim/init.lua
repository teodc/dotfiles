-- Load core snippets
require('core.options')
require('core.keymap')
require('core.autocmds')
require('core.extra')

-- Init plugin manager
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require('lazy').setup({
  require('plugins.alpha-nvim'),
  require('plugins.bufferline'),
  require('plugins.comment'),
  require('plugins.conform'),
  require('plugins.flash'),
  require('plugins.fugitive'),
  require('plugins.gitsigns'),
  require('plugins.harpoon'),
  --require('plugins.indent-blankline'),
  require('plugins.lsp'),
  require('plugins.lualine'),
  require('plugins.mini'),
  require('plugins.neo-tree'),
  --require('plugins.none-ls'),
  --require('plugins.noice'),
  require('plugins.nvim-autopairs'),
  require('plugins.nvim-cmp'),
  --require('plugins.nvim-lint'),
  require('plugins.nvim-treesitter'),
  require('plugins.telescope'),
  require('plugins.todo-comments'),
  require('plugins.tokyonight'),
  require('plugins.vim-sleuth'),
  require('plugins.which-key'),

  -- ToDo:
  --require 'plugins.oil'
  --require 'plugins.zen-mode'
  --require 'plugins.debug',
  --require 'plugins.lazygit',
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
