execute pathogen#infect()

syntax on
filetype plugin indent on

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

" A buffer is marked as ‘hidden’ if it has unsaved changes, and it is not
" currently loaded in a window.
" If you try and quit Vim while there are hidden buffers, you will raise an
" error:
" E162: No write since last change for buffer “a.txt”
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

" Highlight tailing whitespace
set list listchars=tab:»·,trail:·

" Get rid of the delay when pressing O (for example)
set timeout timeoutlen=1000 ttimeoutlen=100

" Always show status bar
set laststatus=2

" Hide the toolbar
set guioptions-=T

" UTF encoding
set encoding=utf-8

" Autoload files that have changed outside of vim
set autoread

" Use system clipboard
" http://stackoverflow.com/questions/8134647/copy-and-paste-in-vim-via-keyboard-between-different-mac-terminals
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

" Display the mode you're in.
set showmode

" Complete files like a shell.
set wildmode=list:longest

" Show 3 lines of context around the cursor.
set scrolloff=3

" Set the terminal's title
set title

" Spell checking
autocmd BufRead,BufNewFile *.md setlocal spell
setlocal spelllang=fr,en_us,es,uk,ru

set autoindent

set tags=./tags;

set t_Co=256

set fillchars+=vert:\|

set guicursor=i-n-v-c-ci-cr:block,ve:ver25,r:hor20,o:hor50
        \,a:blinkwait0-blinkoff400-blinkon0-Cursor/lCursor
        \,sm:block-blinkwait0-blinkoff150-blinkon175

" Vertical line at 80 characters
" set textwidth=80
" set colorcolumn=+1

" Keep focus split large, others minimal
set winwidth=90
set winheight=7
set winminheight=7
set winheight=999

" Set built-in file system explorer to use layout similar to the NERDTree plugin
let g:netrw_liststyle=3

" Enable built-in matchit plugin
runtime macros/matchit.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'altercation/vim-colors-solarized'

Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

map <leader>q :q<CR>
map <leader>w :w<CR>
map <leader>p :set paste<CR>o<esc>"*]p:set nopaste<CR> " Fix indentation on paste
inoremap <C-[> <Esc>:w<CR> " Return to normal mode faster + write file
inoremap jj <C-c> " jj to switch back to normal mode
nnoremap <leader><leader> <c-^> " Switch between the last two files
map Q <Nop> " Disable Ex mode
map K <Nop> " Disable K looking stuff up
nmap <silent> <F3> :NERDTreeToggle<CR>
map <leader>\ :NERDTreeToggle<CR>
let g:NERDTreeWinSize=28
let NERDTreeShowHidden=1
map <leader>r :source ~/.vimrc<CR>
" set background=light " light theme
set background=dark " dark theme
colorscheme solarized

highlight Comment cterm=italic

" For en/em dashes, respectively
autocmd FileType markdown imap -- –
autocmd FileType markdown imap --- —
autocmd FileType markdown imap --<space> –<space>
