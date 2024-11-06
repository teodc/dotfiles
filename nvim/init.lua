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

-- Plugins to load
local plugins = {
  require('plugins.alpha-nvim'),
  -- require('plugins.bufferline'),
  require('plugins.comment'),
  require('plugins.conform'),
  require('plugins.dressing'),
  require('plugins.dropbar'),
  require('plugins.flash'),
  require('plugins.fugitive'),
  require('plugins.gitsigns'),
  require('plugins.grug-far'),
  -- require('plugins.gruvbox'),
  require('plugins.harpoon'),
  -- require('plugins.indent-blankline'),
  require('plugins.lsp'),
  require('plugins.lualine'),
  require('plugins.mini'),
  require('plugins.neo-tree'),
  -- require('plugins.noice'),
  require('plugins.nvim-autopairs'),
  require('plugins.nvim-cmp'),
  require('plugins.nvim-lint'),
  require('plugins.nvim-treesitter'),
  require('plugins.oil'),
  require('plugins.persistence'),
  -- require('plugins.refactoring'),
  require('plugins.telescope'),
  require('plugins.todo-comments'),
  require('plugins.tokyonight'),
  require('plugins.trouble'),
  require('plugins.undotree'),
  require('plugins.vim-sleuth'),
  require('plugins.vim-visual-multi'),
  require('plugins.which-key'),
}

-- Load plugins & setup plugin manager
require('lazy').setup(plugins, {
  ui = {
    border = 'rounded',
    size = { width = 0.8, height = 0.8 },
    backdrop = 100,
  },
  install = {
    missing = true,
    colorscheme = { 'tokyonight-night', 'tokyonight' },
  },
})

-- Background overrides
vim.cmd([[highlight DiagnosticVirtualText guibg=NONE]])
vim.cmd([[highlight DiagnosticVirtualTextError guibg=NONE]])
vim.cmd([[highlight DiagnosticVirtualTextHint guibg=NONE]])
vim.cmd([[highlight DiagnosticVirtualTextInfo guibg=NONE]])
vim.cmd([[highlight DiagnosticVirtualTextWarn guibg=NONE]])
vim.cmd([[highlight FloatBorder guifg=#9aa5ce guibg=NONE]])
vim.cmd([[highlight NormalFloat guibg=NONE]])
vim.cmd([[highlight TelescopeBorder guifg=#9aa5ce guibg=NONE]])
vim.cmd([[highlight TelescopeNormal guibg=NONE]])
vim.cmd([[highlight TelescopePreviewBorder guibg=NONE]])
vim.cmd([[highlight TelescopePreviewTitle guibg=NONE]])
vim.cmd([[highlight TelescopePromptBorder guibg=NONE]])
vim.cmd([[highlight TelescopePromptTitle guibg=NONE]])

-- TODO:
-- Check refactoring
-- plugins.copilot (https://nithinbekal.com/posts/copilot-neovim/)
-- plugins.debug (Neotest?)
-- How to center editor?
-- Spell check (https://johncodes.com/posts/2023/02-25-nvim-spell/)
-- Clipboard manager?

-- vim: ts=2 sts=2 sw=2 et
