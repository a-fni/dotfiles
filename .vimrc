" =============================
" Basic Vim configuration
" Clean, fast, macOS-friendly
" =============================

" Safely enable true colours
if has('termguicolors')
  set termguicolors
endif

" --- Core behavior ---
set nocompatible              " Use Vim defaults, not vi
set number                    " Absolute line numbers
set relativenumber            " Relative line numbers
set backspace=indent,eol,start " Better backspace behavior
set autoread                  " Auto-reload files changed on disk

" --- Syntax & filetypes ---
syntax on                     " Enable syntax highlighting
filetype plugin indent on     " Filetype detection + indent rules
set wrap!                     " Remove long line word wrap

" --- Indentation & tabs ---
set expandtab                 " Use spaces instead of tabs
set tabstop=4                 " Tab width = 4 spaces
set shiftwidth=4              " Indent width = 4 spaces
set softtabstop=4             " Backspace treats spaces like tabs
set autoindent                " Copy indent from current line
set smartindent               " Smarter auto-indentation

" --- Search behavior ---
set ignorecase                " Case-insensitive search...
set smartcase                 " ...unless uppercase letter used
set incsearch                 " Incremental search
set hlsearch                  " Highlight search results

" Hide search highlights with 'hh'
nnoremap hh :nohlsearch<CR>   

" --- Folding ---
" Default: syntax-based folding (works for C/C++, etc.)
set foldmethod=syntax
set foldlevelstart=99         " Start with all folds open
set foldenable

" Python: use indent-based folding (more reliable)
augroup python_folding
  autocmd!
  autocmd FileType python setlocal foldmethod=indent
augroup END                " Enable folding

" --- Visuals ---
set cursorline                " Highlight current line
set showmatch                 " Highlight matching brackets
set termguicolors             " True color support (modern terminals)
highlight CursorLine cterm=NONE ctermbg=250 guibg=#5a5a5a

" --- Status line ---
set laststatus=2              " Always show status line
set statusline=%f\ %h%m%r%=%y\ [%{&fileencoding?&fileencoding:&encoding}]\ %l/%L:%c

" --- Quality-of-life ---
set hidden                    " Allow switching buffers without saving
set wildmenu                  " Better command-line completion
set scrolloff=4               " Keep context above/below cursor
set signcolumn=auto           " Avoid text shifting

" --- Performance ---
set updatetime=300             " Faster UI updates

" =============================
" End of vimrc
" =============================

