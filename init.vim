" Switch syntax highlighting on, when the terminal has colors
syntax on

" Use vim, not vi api
set nocompatible

" No backup files
set nobackup

" No write backup
set nowritebackup

" No swap file
set noswapfile

" Command history
set history=500

" Always show cursor
set ruler

" Show incomplete commands
set showcmd

" Incremental searching (search as you type)
set incsearch

" Highlight search matches
set hlsearch

" Ignore case in search if term(s) are lowercase
set ignorecase

" Search with case sensitivity if term(s) are upper or mixed case
set smartcase

" A buffer is marked as hidden if it has unsaved changes, and it is not
" currently loaded in a window.
" If you try and quit Vim while there are hidden buffers, you will raise an error:
" E162: No write since last change for buffer a.txt
set hidden

" Turn word wrap off
" set nowrap

" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" Convert tabs to spaces, all file types
set expandtab

" Set tab size in spaces (this is for manual indenting)
set tabstop=2

" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=2

" Turn on line numbers AND use relative number
set number
set relativenumber

" UTF encoding
set encoding=utf-8

" Set tabs and trailing spaces
set listchars=tab:»·,trail:·
set list

" Get rid of the delay when pressing O (for example)
set timeout timeoutlen=1000 ttimeoutlen=100

" Always show status bar
set laststatus=2

" Hide the toolbar
set guioptions-=T

" Autoload files that have changed outside of vim
set autoread

" Use system clipboard
set clipboard+=unnamed

" Don't show intro
" set shortmess+=I

" Better splits (new windows appear below and to the right)
set splitbelow
set splitright

" Highlight the current line and column
set cursorline
set cursorcolumn

" Ensure Vim doesn't beep at you every time you make a mistype
set visualbell

" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu

" redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw

" highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

" Don't display the mode you're in; 'showmode' to display the mode
set noshowmode

" Complete files like a shell
set wildmode=list:longest

" Show 3 lines of context around the cursor
set scrolloff=3

" Set the terminal's title
set title

" Spell checking
autocmd BufRead,BufNewFile *.md setlocal spell
setlocal spelllang=fr,en_us,es,uk,ru

" Automatically indent the next line
set autoindent

" Set GUI cursor.
set guicursor=i-n-v-c-ci-cr:block,ve:ver25,r:hor20,o:hor50
        \,a:blinkwait0-blinkoff400-blinkon0-Cursor/lCursor
        \,sm:block-blinkwait0-blinkoff150-blinkon175

" Vertical line at 80 characters
" set textwidth=80
" set colorcolumn=+1

" Set built-in file system explorer to use layout similar to the NERDTree plugin
let g:netrw_liststyle=3

" Vundle start ====================

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Vundle.vim'
Plugin 'tabular'
Plugin 'gruvbox-material'
Plugin 'lightline'
Plugin 'vim-workman'

call vundle#end()
filetype plugin indent on

" Vundle end ======================

let mapleader = " "

" Exit and write with shortcut
map <leader>q :q<CR>
map <leader>w :w<CR>

" Return to normal mode faster + write file
inoremap <C-[> <Esc>:w<CR>

" jj to switch back to normal mode
inoremap zx <Esc>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Set colour scheme options
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_palette = 'original'
let g:gruvbox_material_background = 'hard'

" Set the colour scheme
colorscheme gruvbox-material

" Set lightline plugin colour scheme
let g:lightline = {
      \ 'colorscheme': 'srcery_drk',
      \ }
" Make normal mode qwerty when using workman layout
let g:workman_normal_qwerty = 1

" Set font
set guifont=Ubuntu\ Mono:h16

" Set the space between each line
set linespace=0

" unknown
highlight Comment cterm=italic

" For en/em dashes, respectively
autocmd FileType markdown imap -- –
autocmd FileType markdown imap --- —
autocmd FileType markdown imap --<space> –<space>
