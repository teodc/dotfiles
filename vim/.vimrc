" Set color scheme
colorscheme railscasts

" Set UTF8 as standard encoding
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Enable syntax processing
syntax on

" Number of visual spaces per tab
set shiftwidth=4
set tabstop=4

" Number of spaces per tab when editing
set softtabstop=4

" Replace tabs with spaces
set expandtab

" Show line numbers
set number

" Show the (partial) command as it’s being typed
set showcmd

" Highlight current line
set cursorline

" Set number of history lines to remember
set history=500

" Enable filetype plugins
filetype plugin indent on

" Visual autocomplete for command menu
set wildmenu

" Highlight matching bracket
set showmatch

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" Ignore case when searching
set ignorecase

" When searching, try to be smart about cases
set smartcase

" Configure backspace so it acts as it should
set backspace=eol,start,indent

" Configure backups
set backup
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set writebackup

" Configure undo
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

" Always show current position
set ruler

" Auto indent
set ai

" Smart indent
set si

" Wrap lines
set wrap

" No annoying sound on errors
set noerrorbells

" Always show the status line
set laststatus=2

" With a map leader it's possible to do extra key combinations
" e.g. <leader>w saves the current file
let mapleader=","

" Turn on the improvements of vim
set nocompatible

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamedplus

" Enables recognition of arrow key codes which start off with an ESC
set esckeys

" Prevent the cursor from changing the current column when jumping to another line
set nostartofline

" Optimize for fast terminal connections
set ttyfast

" No default 'g' flag for ':s'
set gdefault

" Write eol at the end of the file
set eol

" The minimal height of a window
set wmh=1

" ???
set viminfo+=!

" Enable per directory .vimrc files
set exrc

" Disable unsafe commands in .vimrc files
set secure

" List mode
set list
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Number of lines checked for set commands
set modeline
set modelines=4

" Enable the use of the mouse in all modes
set mouse=a

" Show the current mode
set showmode

" Show title of the window
set title

" Minimal number of lines to keep above and below the cursor when scrolling
set scrolloff=4

" Strip trailing whitespaces (,ss)
function! StripTrailingWhitespaces()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripTrailingWhitespaces()<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif


