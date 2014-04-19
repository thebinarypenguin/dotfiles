set nocompatible               " Disable vi compatibility

syntax enable                  " Enable syntax highlighting
filetype plugin indent on      " Enable file-type detection and language-dependent indenting

set t_Co=256                   " Assume 256 color environment
colorscheme jellybeans         " Set default color scheme

set encoding=utf-8             " Use UTF-8
set spelllang=en_us            " Use US English for spell checking
set backspace=indent,eol,start " Enable backspacing over auto-indents and line breaks
set hidden                     " Hide buffers when they are abandoned (instead of unloading them)
set history=1000               " Increase command history
set nrformats-=octal           " Remove octal support from the increment and decrement commands

set shortmess+=I               " Disable splash screen
set number                     " Show line numbers
set cursorline                 " Highlight the current line
set laststatus=2               " Alway display the status line

set splitright                 " Open new vertical split windows on the right
set splitbelow                 " Open new horizontal split windows below

set scrolloff=1                " Always show atleast 1 line above and below the cursor
set sidescrolloff=5            " Always show atleast 5 columns to the left and right of the cursor
set display+=lastline          " Show as much as possible of very long last lines

let g:netrw_banner=0           " Disable banner in file explorer

" Set title format (for terminal window)
set title titlestring=%f\ \ %r%m

" Set status line format
set statusline=[%n]\ [%f]%r%m\ %<%=%y\ [%l,%c/%L]

" Render special characters using the following strings (when 'list' is set)
set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:␣,precedes:❰,extends:❱

" Tab/Indent
set expandtab                  " Insert spaces when the Tab key is pressed
set softtabstop=2              " Set the width of these "soft" tabs to 2
set tabstop=2                  " Set the width of a real tab to 2
set shiftwidth=2               " Set the width of an indent/outdent to 2
set autoindent                 " Preserve indent when starting a new line
set shiftround                 " Round indent to multiples of shiftwidth

" Search
set incsearch                  " Enable incremental search
set hlsearch                   " Highlight all search matches
set ignorecase                 " Ignore case in search patterns
set smartcase                  " ... unless pattern is mixed-case

" Command Completion
set wildmenu                   " Enable enhanced command-line completion
set wildmode=list:longest      " Enable shell-style completion

" Set directory for backup files (create if necessary)
let s:backup_dir = $HOME . '/tmp/vim/backup'
if !isdirectory(s:backup_dir)
  call mkdir(s:backup_dir, 'p')
endif
let &backupdir=s:backup_dir . '//,.'

" Set directory for swap files (create if necessary)
let s:swap_dir = $HOME . '/tmp/vim/swap'
if !isdirectory(s:swap_dir)
  call mkdir(s:swap_dir, 'p')
endif
let &directory=s:swap_dir . '//,.'

" Set directory for undo files (create if necessary)
let s:undo_dir = $HOME . '/tmp/vim/undo'
if !isdirectory(s:undo_dir)
  call mkdir(s:undo_dir, 'p')
endif
let &undodir=s:undo_dir . '//,.'

" Treat .md files as markdown (instead of modula)
autocmd BufRead,BufNewFile *.md set filetype=markdown

"
" Re-mappings
"

" Disable arrow keys in Normal, Visual, Select and Operator-Pending modes
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>

" Disable arrow keys in Insert mode
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>

" Switch windows using Ctrl-h, Ctrl-j, Ctrl-k and Ctrl-l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Toggle spell checking with F6
nnoremap <F6> :setlocal spell! spell?<CR>

" Make Y consistent with C and D
nnoremap Y y$

" Make Ctrl-U and Ctrl-W in insert mode undo-able
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>
