" ------------------------------------------------------------------------------
" Plugin Manager
" ------------------------------------------------------------------------------

" vim-plug
" See: https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" ------------------------------------------------------------------------------
" Options
" ------------------------------------------------------------------------------

syntax on " Enable syntax processing
filetype plugin indent on " Enable filetype plugins

let mapleader=" " " Define global leader key
let maplocalleader=" " " Define local leader key

set ai " Auto indent
set autoread " Auto read when a file is changed on disk
set backspace=eol,start,indent " Configure backspace so it acts as it should
set breakindent " Enbale indent on break
set cmdheight=1 " Use only 1 line for the command-line
"set colorcolumn=120 " Show a column
set completeopt=menuone,noselect " Get a better completion experience
set conceallevel=0 " So that `` is visible in markdown files
set cursorline " Highlight current line
set encoding=utf-8 " Output encoding that is shown in the terminal
set eol " Write EOL at the end of the file
set esckeys " Enables recognition of arrow key codes which start off with an ESC
set expandtab " Convert tabs to spaces
set ffs=unix,dos,mac " Use Unix as the standard file type
set fileencoding=utf-8 " Output encoding of the file that is written
set history=5000 " Number of history lines to remember
set hlsearch " Highlight search matches
set ignorecase " Ignore case when searching
set incsearch " Search as characters are entered
set laststatus=2 " Always show the status line
set linebreak " Companion to wrap, don't split words
set list " Show certain whitespace characters in the editor
set listchars=tab:▸\ ,trail:•,nbsp:·,extends:»,precedes:« " Define the whitespace characters to show
set modeline " Check lines for set commands
set modelines=4 " Number of lines to check for set commands
set mouse=a " Enable the use of the mouse
set nocompatible " Turn on the improvements of vim
set noerrorbells " No annoying sound on errors
set noexrc " Per directory .vimrc files
set nomore " Listings don't pause when the screen is filled
set noshowmode " Hide the current mode
set nostartofline " Prevent the cursor from changing column when jumping to another line
set notitle " Don't set title of the window
set novisualbell " No annoying flash on errors
set nowrap " Don't wrap lines
set number relativenumber " Show hybrid line numbers
set numberwidth=4 " Minimal number of columns to use for the line number
set pumheight=0 " Maximum number of items to show in the popup menu for completion
set ruler " Always show current position of the cursor
set scroll=0 " Scroll half the window height
set scrolloff=5 " Minimal number of screen lines to keep above and below the cursor
set secure " Disable unsafe commands in .vimrc files
set shiftwidth=4 " Number of spaces inserted for each indentation
set showcmd " Show the (partial) command as it’s being typed
set showmatch " Highlight matching bracket
set showtabline=1 " How to display the tabline
set sidescroll=0 " Minimal number of columns to scroll horizontally
set sidescrolloff=10 " Minimal number of columns to keep to the left and to the right of the cursor
set signcolumn=yes " Always show the signcolumn
set smartcase " When searching, try to be smart about cases
set smartindent " Smart indent
set softtabstop=4 " Number of spaces a tab counts for while editing
set splitbelow " Open new vertical splits on the bottom
set splitright " Open new horizontal splits on the right
set tabstop=4 " Width of a tab indent
set termguicolors " Enable 24-bit colors
set timeout " Wait for key codes
set timeoutlen=300 " Time to wait for key codes
set ttyfast " Optimize for fast terminal connections
set updatetime=3000 " Slightly decrease the update time
set viminfo+=! " ???
set virtualedit=none " Prevent cursor to be positioned where there is no character
set wildmenu " Visual autocomplete for command menu
set wmh=1 " The minimal height of a window

" Configure clipboard
set clipboard=""
set clipboard+=unnamed
set clipboard+=unnamedplus

" Configure backups, swaps, and undos
set nobackup
set writebackup
set backupdir=~/.vim/backups
set noswapfile
set directory=~/.vim/swaps
set undofile
set undodir=~/.vim/undo
set undolevels=5000
set undoreload=5000

" Break comment lines but not others,
" and insert the comment leader when hitting <CR> or using o
setlocal formatoptions-=t
setlocal formatoptions+=croql

" Hyphenated & underscored words recognized while searching
setlocal iskeyword+=-
setlocal iskeyword+=_

" Use a bar cursor while in insert mode,
" and a block cursor in any other mode
let &t_EI = "\e[2 q"
let &t_SI = "\e[6 q"

" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------

call plug#begin()

""" Catppuccin
" See: https://github.com/catppuccin/vim
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

""" Lightline
" See: https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'
let g:lightline = {'colorscheme': 'catppuccin_mocha'}

" Undotree
" See: https://github.com/mbbill/undotree
Plug 'mbbill/undotree'
let g:undotree_WindowLayout = 4
let g:undotree_SplitWidth = 40
let g:undotree_DiffpanelHeight = 10
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_DiffCommand = "diff"
nmap <leader>u :UndotreeToggle<CR>

" Quickscope
" See: https://github.com/unblevable/quick-scope
Plug 'unblevable/quick-scope'
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" EasyMotion
" See: https://github.com/easymotion/vim-easymotion
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0
nmap <leader>f <Plug>(easymotion-bd-f)
nmap <leader>F <Plug>(easymotion-bd-f2)
nmap <leader>t <Plug>(easymotion-bd-t)
nmap <leader>T <Plug>(easymotion-bd-t2)

" NERDTree
" See: https://github.com/preservim/nerdtree
" Usage:
"   o      Open files, directories and bookmarks
"   go     Open selected file, but leave cursor in the NERDTree
"   t      Open selected node/bookmark in a new tab
"   T      Same as 't' but keep the focus on the current tab
"   i      Open selected file in a split windo
"   gi     Same as i, but leave the cursor on the NERDTree
"   s      Open selected file in a new vsplit
"   gs     Same as s, but leave the cursor on the NERDTree
"   O      Recursively open the selected directory
"   x      Close the current nodes parent
"   X      Recursively close all children of the current node
"   P      Jump to the root node
"   p      Jump to current nodes parent
"   K      Jump up inside directories at the current tree depth
"   J      Jump down inside directories at the current tree depth
"   <C-J>  Jump down to next sibling of the current directory
"   <C-K>  Jump up to previous sibling of the current directory
"   r      Recursively refresh the current directory
"   R      Recursively refresh the current root
"   m      Display the NERDTree menu
"   q      Close the NERDTree window
"   A      Zoom (maximize/minimize) the NERDTree window
"   d      Delete file or directory
"   n      Create File
"   N      Create Directory
Plug 'preservim/nerdtree'
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeFileLines = 1
nmap - :NERDTreeFind<CR>
"nmap <C-t>? :NERDTree<CR>
"nmap <C-t>? :NERDTreeToggle<CR>
"nmap <C-t>? :NERDTreeFocus<CR>

" Surround
" See: https://github.com/tpope/vim-surround
" Usage:
"   cs"'    Change surrounding "" to ''
"   cst"    Change surrounding tag to ""
"   ds"     Delete surrounding ""
"   dst     Delete surrounding tag
"   ysiw]   Wrap current word with [] (no spaces)
"   ysiw{   Wrap current word with {  } (with spaces)
"   yss<b>  Wrap current line with <b></b>
Plug 'tpope/vim-surround'

" " Multiple Cursors
" " See: https://github.com/mg979/vim-visual-multi
" Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" let g:VM_mouse_mappings = 0
" let g:VM_default_mappings = 0
" let g:VM_add_cursor_at_pos_no_mappings = 1
" let g:VM_maps = {}
" let g:VM_maps['Find Under'] = '<C-n>' " replace C-n
" let g:VM_maps['Find Subword Under'] = '<C-n>' " replace visual C-n
" let g:VM_maps['Select All'] = '<leader>na'
" let g:VM_maps['Start Regex Search'] = '<leader>nr'
" let g:VM_maps["Add Cursor At Pos"] = '<leader>np'
" let g:VM_maps["Toggle Mappings"] = '<leader>no'

" Highlightedyank
" See: https://github.com/machakann/vim-highlightedyank
Plug 'machakann/vim-highlightedyank'
let g:highlightedyank_highlight_duration = 100
let g:highlightedyank_highlight_in_visual = 1

" Commentary
" See: https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

" Indent Object
" See: https://github.com/michaeljsmith/vim-indent-object
" Usage:
"   ii  Indent level (no line above)
"   iI  Indent level (no lines above/below)
"   ai  Indent level plus one line above
"   aI  Indent level plus one line above and below
Plug 'michaeljsmith/vim-indent-object'

" " Exchange
" " See: https://github.com/tommcdo/vim-exchange
" " Usage:
" "   cx{motion}  On first use, define a {motion} to exchange. On second use, define another {motion} and perform the exchange.
" "   cxx         Like cx, but use the current line
" "   X           Like cx, but for Visual mode
" "   cxc         Clear any {motion} pending for exchange
" Plug 'tommcdo/vim-exchange'

" " Textobj Entire
" " See: https://github.com/kana/vim-textobj-entire
" " Usage:
" "   ae  Targets the entire content of the current buffer
" "   ie  Similar to ae, but does not include leading and trailing empty lines
" Plug 'kana/vim-textobj-user'
" Plug 'kana/vim-textobj-entire'

" " Argtextobj
" " See: https://www.vim.org/scripts/script.php?script_id=2699
" " Usage:
" "   aa  Parameter and the next comma if first parameter, otherwise parameter and the previous coma
" "   ia  The parameter only
" Plug 'vim-scripts/argtextobj.vim'

" Paragraph Motion
" See: https://github.com/dbakker/vim-paragraph-motion
Plug 'dbakker/vim-paragraph-motion'

" " Matchit
" " See: https://github.com/chrisbra/matchit
" Plug 'chrisbra/matchit'

call plug#end()

" ------------------------------------------------------------------------------
" Theme
" ------------------------------------------------------------------------------

silent! colorscheme catppuccin_mocha

" ------------------------------------------------------------------------------
" Auto Commands
" ------------------------------------------------------------------------------

if has("autocmd")

    " NERDTree-related autocmds

    " " Exit Vim if NERDTree is the only window remaining in the only tab
    " autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

    " " Close the tab if NERDTree is the only window remaining in it
    " autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

    " " If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree
    " autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute 'normal! \<C-W>w' | execute 'buffer'.buf | endif

endif

" ------------------------------------------------------------------------------
" Remaps
" ------------------------------------------------------------------------------

" Unmap space key
nnoremap <Space> <NOP>
vnoremap <Space> <NOP>

" ESC also clears search results
nnoremap <Esc> :nohlsearch<CR><Esc>

" This stays between us
nnoremap <C-c> <Esc>
inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>

" Save & close
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-x> :qa<CR>

" Open Netrw
nnoremap <C-e> :Explore<CR>

" Center screen when navigating search results
nnoremap n nzzzv
nnoremap N Nzzzv

" Center screen when scrolling
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <C-b> <C-b>zz
nnoremap <C-f> <C-f>zz

" Easily move to beginning/end of line
nnoremap L $
vnoremap L $
nnoremap H ^
vnoremap H ^

" " Easily move to next/previous paragraph
" nnoremap J }
" vnoremap J }
" nnoremap K {
" vnoremap K {

" Move line or visual block up/down
nnoremap <C-j> :mo +1<CR>
vnoremap <C-j> :mo '>+1<CR>gv
nnoremap <C-k> :mo -2<CR>
vnoremap <C-k> :mo '<-2<CR>gv

" Indent/outdent line or visual block
nnoremap <C-h> <<
vnoremap <C-h> <gv
nnoremap <C-l> >>
vnoremap <C-l> >gv

" Keep selection when indenting
vnoremap < <gv
vnoremap > >gv

" Delete single character whitout yanking
nnoremap x "_x
vnoremap x "_x

" C without replacing clipboard selection
nnoremap c "_c
vnoremap C "_C
nnoremap c "_c
vnoremap C "_C

" Delete without yanking to the clipboard
nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap <leader>D "_D

" " Yank into the system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

" " Paste from the system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P

" Paste without replacing clipboard selection
xnoremap <leader>p "_dP

" Merge line bellow with the current one without moving the cursor
nnoremap J mzJ`z

" Copy the line/selection to the line bellow
nnoremap <leader>o :copy .<CR>
vnoremap <leader>o :copy '><CR>gv

" Comment line or visual block
nnoremap <leader>m <Plug>CommentaryLine
vnoremap <leader>m <Plug>Commentary

" Windows (aka splits)
" Create a new horizontal/vertical split
nnoremap <leader>wh :new<CR>
nnoremap <leader>wv :vnew<CR>
" Make all splits equal height & width
nnoremap <leader>we :wincmd =<CR>
" Close current split
nnoremap <leader>wq :wincmd q<CR>
" Navigate between splits
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>j :wincmd j<CR>
" Rezise window with arrows
nnoremap <Up> :resize -2<CR>
nnoremap <Down> :resize +2<CR>
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

" Buffers
" Create a new empty buffer
nnoremap <leader>bc :enew<CR>
" Open file in new buffer
nnoremap <leader>bo :edit <Space>
" List all opened buffers & offer to move to one of them
nnoremap <Leader>bl :buffers<CR>:buffer<Space>
" Go to the next/previous buffer
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
" Close buffer
nnoremap <leader>bq :bdelete<CR>

" Tabs
" Open a new tab
nnoremap <leader>tc :tabnew<CR>
" Move to the next/previous tab
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprevious<CR>
" Close the current tab and all its windows
nnoremap <leader>tq :tabclose<CR>
" Close all tabs except for the current one
nnoremap <leader>tx :tabonly<CR>

" " Remap number increment & decrement
" nnoremap <C-?> <C-a>
" vnoremap <C-?> <C-a>gv
" nnoremap <C-?> <C-x>
" vnoremap <C-?> <C-x>gv

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

