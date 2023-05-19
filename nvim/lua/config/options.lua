-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local g = vim.g
local opt = vim.opt

g.mapleader = " "
g.maplocalleader = " "

opt.ai = true
opt.autoread = true
opt.backspace = "eol,start,indent"
opt.backup = false
opt.backupdir = os.getenv("HOME") .. "/.vim/backups"
opt.clipboard = ""
-- opt.cmdheight = 1
opt.colorcolumn = "120"
opt.compatible = false
opt.cursorline = true
opt.directory = os.getenv("HOME") .. "/.vim/swaps"
opt.encoding = "utf8"
opt.eol = true
opt.errorbells = false
opt.expandtab = true
opt.exrc = false
opt.ffs = "unix,dos,mac"
opt.gdefault = false
opt.history = 5000
opt.hlsearch = true
opt.ignorecase = true
opt.incsearch = true
opt.laststatus = 3
opt.list = true
opt.listchars = { tab = "▸ ", trail = "•" }
-- opt.listchars = { tab = "▸ ", trail = "•", eol = "↲", nbsp ="·", extends = "»", precedes = "«" }
opt.modeline = true
opt.modelines = 5
opt.more = true
opt.mouse = "a"
opt.number = true
opt.relativenumber = true
opt.ruler = true
opt.scroll = 0
opt.scrolloff = 10
opt.secure = true
opt.shiftwidth = 4
opt.showcmd = true
opt.showmatch = false
opt.showmode = false
opt.si = true
opt.sidescroll = 0
opt.sidescrolloff = 10
opt.signcolumn = "yes"
opt.smartcase = true
opt.softtabstop = 4
opt.splitbelow = true
opt.splitright = true
opt.startofline = false
opt.swapfile = false
opt.tabstop = 4
opt.termguicolors = true
opt.timeout = true
opt.timeoutlen = 300
opt.title = false
opt.ttyfast = true
opt.undodir = os.getenv("HOME") .. "/.vim/undo"
opt.undofile = true
opt.undolevels = 5000
opt.undoreload = 5000
opt.virtualedit = "none"
opt.visualbell = false
opt.wildmenu = true
opt.wmh = 1
opt.wrap = false
opt.writebackup = true
