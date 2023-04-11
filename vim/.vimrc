" ------------------------------------------------------------------------------
" Plugin Manager
" ------------------------------------------------------------------------------

""" vim-plug
" Basic Usage:
"   PlugInstall [name ...] [#threads]
"   PlugUpdate [name ...] [#threads]
"   PlugClean[!]
"   PlugUpgrade
"   PlugStatus
"   PlugDiff
" See: https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" ------------------------------------------------------------------------------
" Options
" ------------------------------------------------------------------------------

colorscheme catppuccin_macchiato " Set color scheme
filetype plugin indent on " Enable filetype plugins
syntax on " Enable syntax processing

let &t_EI = "\e[2 q" " Use a block cursor in any other mode
let &t_SI = "\e[6 q" " Use a bar cursor while in insert mode
let g:lightline = {'colorscheme': 'catppuccin_macchiato'} " Lightline theme
let mapleader=" " " Define global map leader key
let maplocalleader=" " " Define local map leader key

set ai " Auto indent
set autoread " Auto read when a file is changed on disk
set backspace=eol,start,indent " Configure backspace so it acts as it should
set backupdir=~/.vim/backups " Backups path
set clipboard="" " Default clipboard
set cmdheight=1 " Use only 1 line for the command-line
set colorcolumn=120 " Show a column
set cursorline " Highlight current line
set directory=~/.vim/swaps " Swap files path
set encoding=utf8 " Set UTF8 as standard encoding
set eol " Write eol at the end of the file
set esckeys " Enables recognition of arrow key codes which start off with an ESC
set expandtab " Replace tabs with spaces
set ffs=unix,dos,mac " Use Unix as the standard file type
set history=5000 " Set number of history lines to remember
set hlsearch " Highlight matches
set ignorecase " Ignore case when searching
set incsearch " Search as characters are entered
set laststatus=2 " Always show the status line
set list " Show trailing spaces, tabs and other special formatting characters
set listchars=tab:▸\ ,trail:• " Define formatting characters·
"set listchars=tab:▸\ ,trail:•,eol:↲,nbsp:·,extends:»,precedes:«
set modeline " Check lines for set commands
set modelines=4 " Number of lines to check for set commands
set mouse="" " Disable the use of the mouse in all modes
set nobackup " Configure backups
set nocompatible " Turn on the improvements of vim
set noerrorbells " No annoying sound on errors
set noexrc " Per directory .vimrc files
set nogdefault " Default status of g flag when substituting
set nomore " Listings don't pause when the screen is filled
set nostartofline " Prevent the cursor from changing column when jumping to another line
set noswapfile " Swap files
set notitle " Don't set title of the window
set novisualbell " No annoying flash on errors
set nowrap " Don't wrap lines
set number relativenumber " Show hybrid line numbers
set ruler " Always show current position
set scroll=0 " Scroll half the window height
set scrolloff=10 " Minimal number of screen lines to keep above and below the cursor
set secure " Disable unsafe commands in .vimrc files
set shiftwidth=4 " Indentation width
set showcmd " Show the (partial) command as it’s being typed
set showmatch " Highlight matching bracket
set showmode " Show the current mode
set si " Smart indent
set sidescroll=0 " Minimal number of columns to scroll horizontally
set sidescrolloff=10 " Minimal number of columns to keep to the left and to the right of the cursor
set signcolumn=yes " Always show the signcolumn
set smartcase " When searching, try to be smart about cases
set softtabstop=4 " Set width of tab and backspace indents
set splitbelow " Open new vertical splits on the bottom
set splitright " Open new horizontal splits on the right
set tabstop=4 " Set width of tab indent
set termguicolors " Use 24-bit colors
set timeout " Wait for key codes
set timeoutlen=300 " Time to wait for key codes
set ttyfast " Optimize for fast terminal connections
set undodir=~/.vim/undo " Undo files path
set undofile " Configure undo
set undolevels=5000 " Number of undos
set undoreload=5000 " Number of undos 
set viminfo+=! " ???
set virtualedit=none " Prevent cursor to be positioned where there is no character
set wildmenu " Visual autocomplete for command menu
set wmh=1 " The minimal height of a window
set writebackup " Configure backups

" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------

call plug#begin()

""" Quickscope
" See: https://plugins.jetbrains.com/plugin/19417-ideavim-quickscope
Plug 'unblevable/quick-scope'
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

""" EasyMotion
" Basic Usage:
" Available Commands: https://github.com/AlexPl292/IdeaVim-EasyMotion#supported-commands
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0
nmap <leader>f <Plug>(easymotion-bd-f)
nmap <leader>F <Plug>(easymotion-bd-f2)
nmap <leader>t <Plug>(easymotion-bd-t)
nmap <leader>T <Plug>(easymotion-bd-t2)

""" NERDTree
" Basic Usage:
"   Ctrl-t  Open NERDTree (mapped bellow)
"   q       Close the NERDTree window
"   o       Open files, directories and bookmarks
"   go      Open selected file, but leave cursor in the NERDTree
"   i       Open selected file in a split window
"   gi      Same as i, but leave the cursor on the NERDTree
"   s       Open selected file in a new vsplit
"   gs      Same as s, but leave the cursor on the NERDTree
"   O       Recursively open the selected directory
"   x       Close the current nodes parent
"   X       Recursively close all children of the current node
"   P       Jump to the root node
"   p       Jump to current nodes parent
"   <C-J>   Jump down to next sibling of the current directory
"   <C-K>   Jump up to previous sibling of the current directory
"   R       Recursively refresh the current root
"   m       Display the NERDTree menu
" Available Commands: https://github.com/JetBrains/ideavim/wiki/NERDTree-support#supported-commands
Plug 'preservim/nerdtree'
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden = 1
nmap <C-t> :NERDTreeFind<CR>
"nmap <C-t>? :NERDTree<CR>
"nmap <C-t>? :NERDTreeRefreshRoot<CR>
"nmap <C-t>? :NERDTreeToggle<CR>
"nmap <C-t>? :NERDTreeFocus<CR>

""" Surround
" Basic Usage:
"   cs"'    Change surrounding "" to ''
"   cst"    Change surrounding tag to ""
"   ds"     Delete surrounding ""
"   dst     Delete surrounding tag
"   ysiw]   Wrap current word with [] (no spaces)
"   ysiw{   Wrap current word with {  } (with spaces)
"   yss<b>  Wrap current line with <b></b>
" See: https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

""" Multiple Cursors
" Basic Usage:
"   <C-n> Start multicursor
"   <C-n> Next match
"   <C-x> Skip next match
"   <C-p> Remove current match and go back to previous one
"   <C-m> Select all matches
" See: https://github.com/terryma/vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'
let g:multi_cursor_support_imap = 0
let g:multi_cursor_start_word_key = '<C-n>'
let g:multi_cursor_select_all_word_key = '<C-m>'
let g:multi_cursor_start_key = 'g<C-n>'
let g:multi_cursor_select_all_key = 'g<C-m>'
let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_prev_key = '<C-p>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<Esc>'

""" Highlightedyank
" See: https://github.com/machakann/vim-highlightedyank
Plug 'machakann/vim-highlightedyank'
let g:highlightedyank_highlight_duration = 100
let g:highlightedyank_highlight_in_visual = 0

""" Commentary
" Basic Usage:
"   gc{motion}  Comment or uncomment lines that {motion} moves over
"   gcc         Comment or uncomment [count] lines
"   {visual}gc  Comment or uncomment the highlighted lines
"   gc          Text object for a comment (operator pending mode only)
"   gcgc        Uncomment the current and adjacent commented lines
"   gcu
" See: https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

""" Indent Object
" Basic Usage:
"   ii  Indent level (no line above)
"   iI  Indent level (no lines above/below)
"   ai  Indent level plus one line above
"   aI  Indent level plus one line above and below
" Examples:
"   gcii  Comment all the instructions inside the same indent level
"   dai   Delete an if statement and all its instructions
" See: https://github.com/michaeljsmith/vim-indent-object
Plug 'michaeljsmith/vim-indent-object'

""" Exchange
" Basic Usage:
"   cx{motion}  On first use, define a {motion} to exchange. On second use, define another {motion} and perform the exchange.
"   cxx         Like cx, but use the current line
"   X           Like cx, but for Visual mode
"   cxc         Clear any {motion} pending for exchange
" See: https://github.com/tommcdo/vim-exchange
Plug 'tommcdo/vim-exchange'

""" Textobj Entire
" Basic Usage:
"   ae  Targets the entire content of the current buffer
"   ie  Similar to ae, but does not include leading and trailing empty lines
" See: https://github.com/kana/vim-textobj-entire
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'

""" Argtextobj
" Basic Usage:
"   aa  Parameter and the next comma if first parameter, otherwise parameter and the previous coma
"   ia  The parameter only
" Examples:
"   daa  Delete an argument
"   cia  Change an argument
"   vai  Select an argument
" See: https://www.vim.org/scripts/script.php?script_id=2699
Plug 'vim-scripts/argtextobj.vim'
let g:argtextobj_pairs="[:],(:),<:>"

""" Paragraph Motion
" The { and } motions also match lines that only contain whitespace.
" See: https://github.com/dbakker/vim-paragraph-motion
Plug 'dbakker/vim-paragraph-motion'

""" Matchit
" Basic Usage:
"   %   Cycle forward through matching groups as specified by b:match_words
"   g%  Cycle backwards through matching groups
"   [%  Go to [count] previous unmatched group (similar to [{)
"   ]%  Go to [count] next unmatched group (similar to ]})
"   a%  In Visual mode, select the matching group containing the cursor (similar to v_a[)
" See: https://github.com/chrisbra/matchit
Plug 'chrisbra/matchit'

""" Devicons
" See: https://github.com/ryanoasis/vim-devicons
"Plug 'ryanoasis/vim-devicons'
"let g:WebDevIconsConcealNerdTreeBrackets = 0
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
"let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 0

call plug#end()

" ------------------------------------------------------------------------------
" Auto Commands
" ------------------------------------------------------------------------------

if has("autocmd")

    " Treat .json files as .js
    "autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript

    " Exit Vim if NERDTree is the only window remaining in the only tab
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

    " Close the tab if NERDTree is the only window remaining in it
    autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

    " If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree
    autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
        \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

endif

" ------------------------------------------------------------------------------
" Remaps
" ------------------------------------------------------------------------------

" Unmap space key
nnoremap <Space> <NOP>
vnoremap <Space> <NOP>

" This stays between us
inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>

" Save & close current file
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>

" Redraw screen and clear current search highlighting
nnoremap <C-z> :nohl<CR><C-l>

" Open Netrw
"nnoremap <C-t> :Explore<CR>

" Center screen when navigating search results
nnoremap n nzzzv
nnoremap N Nzzzv

" Center screen when moving it
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <C-b> <C-b>zz
nnoremap <C-f> <C-f>zz

" Delete without yanking to the clipboard
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Delete line without yanking it
nnoremap <leader>D "_dd

" Yank into the system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

" Paste from the system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P

" Paste without losing selection from the clipboard
xnoremap <leader>p "_dP

" Don't move cursor when using J
nnoremap J mzJ`z

" Append above line to current one
nmap K kddpkJ

" Move line or visual block up/down
nnoremap <C-j> :mo +1<CR>
nnoremap <C-k> :mo -2<CR>
vnoremap <C-j> :mo '>+1<CR>gv
vnoremap <C-k> :mo '<-2<CR>gv

" Indent/outdent line or visual block
nnoremap <C-h> <<
nnoremap <C-l> >>
vnoremap <C-h> <gv
vnoremap <C-l> >gv

" Duplicate line or visual block without yanking it
nnoremap <leader>o :co .<CR>
vnoremap <leader>o :co '><CR>gv

" Comment line or visual block
nnoremap <leader>m <Plug>CommentaryLine
vnoremap <leader>m <Plug>Commentary

""" Splits
" Create new splits
nnoremap <leader>- :new<CR>
nnoremap <leader>_ :vnew<CR>
" Make all windows equal height & width
nnoremap <leader>= <C-w>=
" Move cursor to the left/right/top/bottom window
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>k <C-w>k
nnoremap <leader>j <C-w>j
" Move the current split window into its own tab
"nnoremap <leader>K <C-w>T

""" Buffers
" Open new buffer
nnoremap <leader>B :enew<CR>
" List all opened buffers & offer to move to one of them
nnoremap <Leader>b :buffers<CR>:buffer<Space>
" Go to the next/previous buffer
nnoremap L :bn<CR>
nnoremap H :bp<CR>
" Delete buffer
nnoremap <leader>q :bd<CR>

""" Tabs
" Open a new tab
nnoremap <leader>+ :tabnew<CR>
" Move to the next/previous tab
nnoremap <leader>] gt<CR>
nnoremap <leader>[ gT<CR>
" Close the current tab and all its windows
nnoremap <leader>w :tabc<CR>
" Close all tabs except for the current one
nnoremap <leader>W :tabo<CR>

" ------------------------------------------------------------------------------
" Custom Commands
" ------------------------------------------------------------------------------

" Strip trailing whitespaces
function! StripTrailingWhitespaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripTrailingWhitespaces()<cr>

