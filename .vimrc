" set the theme
colorscheme desert

" Make Vim more useful
set nocompatible

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Enhance command-line completion
set wildmenu

" Allow cursor keys in insert mode
set esckeys

" Allow backspace in insert mode
set backspace=indent,eol,start

" Optimize for fast terminal connections
set ttyfast

" Add the g flag to search/replace by default
set gdefault

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Change mapleader
let mapleader=","

" Don't add empty newlines at the end of files
set binary
set noeol

" Respect modeline in files
set modeline
set modelines=4

" Line numbers
set nu

" Enable syntax highlighting
syntax on

" Make tabs as wide as 4 spaces
set tabstop=4

" When indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Copy the indentation from the previous line, when starting a new line.
set autoindent

" Automatically inserts one extra level of indentation in some cases, and works for C-like files.
set smartindent

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" If a pattern contains an uppercase letter, it is case sensitive, otherwise, it is not.
set smartcase

" Highlight dynamically as pattern is typed
set incsearch

" Always show status line
set laststatus=2

" Disable error bells
set noerrorbells

" Don't reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
set ruler

" Don't show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it is being typed
set showcmd

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction

noremap <leader>ss :call StripWhitespace()<CR>

" Save a file as root
cmap W! w !sudo tee % > /dev/null<CR>:e!<CR><CR> 

" Remove dos \r
nnoremap dm :%s/\r//g <CR>

" Reload vim config
cnoreabbrev reload :so %<CR>

" Shell
set shell=zsh