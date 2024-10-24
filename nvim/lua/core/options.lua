-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

vim.opt.autoindent = true -- Preserve current line indent when starting a new one
--vim.opt.autoread = true
vim.opt.backspace = 'indent,eol,start' -- Configure backspace so it acts as it should
vim.opt.breakindent = true -- Enable break indent
vim.opt.cmdheight = 1 -- Set the height of the command line
vim.opt.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience
vim.opt.conceallevel = 0 -- So that `` is visible in markdown files
vim.opt.cursorline = true -- Show which line your cursor is on
vim.opt.eol = true -- Write EOL at the end of the file
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.fileencoding = 'utf-8' -- File-content encoding for the current buffer
vim.opt.formatoptions:remove({ 'c', 'r', 'o' }) -- Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
vim.opt.history = 5000 -- Number of history lines to remember
vim.opt.hlsearch = true -- Highlight search matches
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.inccommand = 'split' -- Preview substitutions live, as you type!
vim.opt.incsearch = true -- Search as you type
vim.opt.iskeyword:append('-') -- Hyphenated words recognized by searches
vim.opt.laststatus = 2 -- Always show the status line
vim.opt.linebreak = true -- Companion to wrap, don't split words
vim.opt.list = true -- Show certain whitespace characters in the editor
vim.opt.listchars = { tab = '▸ ', trail = '•', nbsp = '·' } -- How to display certain whitespace characters
--vim.opt.more = false -- Listings don't pause when the screen is filled
vim.opt.mouse = 'a' -- Enable mouse (disable it with '')
vim.opt.number = true -- Make line numbers default
vim.opt.numberwidth = 4 -- Minimal number of columns to use for the line number
vim.opt.pumheight = 10 -- Maximum number of items to show in the popup menu
vim.opt.relativenumber = true -- Set relative line numbers, to help with jumping
vim.opt.ruler = true -- Always show the current cursor position
--vim.opt.runtimepath:remove '/usr/share/vim/vimfiles' -- Separate vim plugins from nvim in case vim still used
vim.opt.scroll = 0 -- Scroll half the window height
vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor
vim.opt.shiftwidth = 4 -- The number of spaces inserted for each indentation
--vim.opt.shortmess:append 'c' -- Don't give |ins-completion-menu| messages
--vim.opt.showmatch = true
vim.opt.showmode = false -- Don't show the mode
vim.opt.showtabline = 1 -- How to display the tab line
vim.opt.sidescroll = 0 -- Minimal number of columns to scroll horizontally
vim.opt.sidescrolloff = 10 -- The minimal number of screen columns to keep to the left and to the right of the cursor
vim.opt.signcolumn = 'yes' -- Always show the signcolumn
vim.opt.smartcase = true -- Try to be smart about cases when searching
vim.opt.smartindent = true -- Make indenting smarter again
vim.opt.softtabstop = 4 -- Number of spaces that a tab counts for while performing editing operations
vim.opt.splitbelow = true -- Horizontal splits open below current window
vim.opt.splitright = true -- Vertical splits open to the right of current window
vim.opt.startofline = false -- Stay on same column when jumping to another line
vim.opt.swapfile = false -- No swapfile
vim.opt.tabstop = 4 -- Width of a tab indent
vim.opt.termguicolors = true -- Enable 24-bit colors
vim.opt.timeoutlen = 300 -- Decrease mapped sequence wait time (displays which-key popup sooner)
vim.opt.title = false -- Don't set the title of the window
vim.opt.undofile = true -- Save undo history
vim.opt.updatetime = 3000 -- Slightly decrease the update time
vim.opt.virtualedit = 'none' -- Prevent cursor to be positioned where there is no character
--vim.opt.whichwrap = 'bs<>[]hl' -- Which "horizontal" keys are allowed to travel to prev/next line
vim.opt.wrap = false -- Don't wrap lines

-- Sync clipboard between OS and Neovim
-- (schedule the setting after `UiEnter` because it can increase startup-time)
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Backup current file, deleted afterwards
vim.opt.backup = false
vim.opt.writebackup = true
