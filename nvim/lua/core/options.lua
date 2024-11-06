-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Sync clipboard between OS and Neovim (schedule the setting after `UiEnter` to prevent increasing startup-time)
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.autoindent = true -- Preserve current line indent when starting a new one
vim.opt.autoread = true -- Automatically re-read the file when it has been changed outside of Vim
vim.opt.backspace = 'eol,start,indent' -- Configure backspace so it acts as it should
vim.opt.breakindent = true -- Enable indent on break
vim.opt.cmdheight = 1 -- Set the height of the command line
--vim.opt.colorcolumn = 120 -- Highlight a column
vim.opt.completeopt = 'menuone,noselect' -- Get a better completion experience
vim.opt.conceallevel = 0 -- So that `` is visible in markdown files
vim.opt.cursorline = true -- Highlight the current line
vim.opt.encoding = 'utf-8' -- Output encoding that is shown in the terminal
vim.opt.eol = true -- Write EOL at the end of the file
vim.opt.errorbells = false -- No annoying sound on errors
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.exrc = false -- Per directory .vimrc files
vim.opt.fileencoding = 'utf-8' -- Output encoding of the file that is written
vim.opt.fileformats = 'unix,mac,dos' -- Supported file formats based on the file's EOL (default to first of list)
vim.opt.formatoptions:remove({ 'c', 'r', 'o' }) -- Don't insert the current comment leader automatically when breaking comment lines
vim.opt.history = 5000 -- Number of history lines to remember
vim.opt.hlsearch = true -- Highlight search matches
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.inccommand = 'split' -- Preview substitutions as you type
vim.opt.incsearch = true -- Search as you type
vim.opt.iskeyword:append({ '-', '_' }) -- Hyphenated & underscored words are recognized
vim.opt.laststatus = 2 -- Always show the status line
vim.opt.linebreak = true -- Companion to wrap, don't split words
vim.opt.list = true -- Show certain whitespace characters in the editor
vim.opt.listchars = { tab = '▸ ', trail = '•', nbsp = '·' } -- How to display certain whitespace characters
vim.opt.modeline = true -- Check lines for set commands
vim.opt.modelines = 5 -- Number of lines to check for set commands
vim.opt.more = false -- Listings don't pause when the screen is filled
vim.opt.mouse = 'a' -- Enable the use of the mouse
vim.opt.number = true -- Show line numbers
vim.opt.numberwidth = 4 -- Minimal number of columns to use for the line number
vim.opt.pumheight = 0 -- Maximum number of items to show in the popup menu for completion
vim.opt.relativenumber = true -- Show hybrid line numbers
vim.opt.ruler = true -- Always show the current position of the cursor
--vim.opt.runtimepath:remove '/usr/share/vim/vimfiles' -- Separate vim plugins from nvim in case vim still used
vim.opt.scroll = 0 -- Scroll half the window height
vim.opt.scrolloff = 5 -- Minimal number of screen lines to keep above and below the cursor
vim.opt.shiftwidth = 4 -- Number of spaces inserted for each indentation
--vim.opt.shortmess:append 'c' -- Don't give |ins-completion-menu| messages
vim.opt.showcmd = true -- Show the (partial) command as it’s being typed
vim.opt.showmatch = true -- Highlight matching bracket
vim.opt.showmode = false -- Hide the current mode
vim.opt.showtabline = 0 -- How to display the tabline
vim.opt.sidescroll = 0 -- Minimal number of columns to scroll horizontally
vim.opt.sidescrolloff = 5 -- Minimal number of columns to keep to the left and to the right of the cursor
vim.opt.signcolumn = 'yes' -- Always show the signcolumn
vim.opt.smartcase = true -- Try to be smart about cases when searching
vim.opt.smartindent = true -- Make indenting smarter again
vim.opt.softtabstop = 4 -- Number of spaces a tab counts for while editing
vim.opt.splitbelow = true -- Open new vertical splits on the bottom
vim.opt.splitright = true -- Open new horizontal splits on the right
vim.opt.startofline = false -- Prevent some commands to move the cursor at the start of another line
vim.opt.tabstop = 4 -- Width of a tab indent
vim.opt.termguicolors = true -- Enable 24-bit colors
vim.opt.timeout = true -- Wait for key codes
vim.opt.timeoutlen = 300 -- Decrease mapped sequence wait time (displays which-key popup sooner)
vim.opt.title = false -- Don't set the title of the window
vim.opt.ttyfast = true -- Optimize for fast terminal connections
vim.opt.updatetime = 3000 -- Slightly decrease the update time
vim.opt.virtualedit = 'none' -- Prevent cursor to be positioned where there is no character
vim.opt.visualbell = false -- No annoying flash on errors
--vim.opt.whichwrap = 'bs<>[]hl' -- Which "horizontal" keys are allowed to travel to prev/next line
vim.opt.wildmenu = true -- Visual autocomplete for command menu
vim.opt.winminheight = 1 -- The minimal height of a window
vim.opt.wrap = false -- Don't wrap lines

-- Configure backups, swaps, and undos
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undolevels = 5000
vim.opt.undoreload = 5000
vim.opt.writebackup = true
