"---------------------
"plugin configuration
"---------------------

" Pathogen runtimepath manager
execute pathogen#infect()

" markdown
let g:markdown_fenced_languages = [
    \ 'bash=sh',
    \ 'c',
    \ 'json',
    \ 'python',
\]
let g:markdown_syntax_conceal = 0
let g:markdown_folding = 1


"---------------------
" Visual
"---------------------

" Solarized Dark theme
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

"------------------
" Syntax and indent
"------------------

syntax on		" Turn on syntax highlighting.
set showmatch 		" Show matching braces when text indicator is over them
set tabstop=2		" Make tabs as wide as two spaces

filetype plugin indent on
set autoindent

" highlight current line, but only in active window
augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

"---------------------
"Basic editing config
"---------------------

set shortmess+=I		" Disable the default Vim startup message.
set wildmenu		" Enhance command-line completion
set number		" Show line numbers.
set relativenumber	" Enables relative line numbering mode.
set scrolloff=5 		" show lines above and below cursor (when possible)
set laststatus=2		" Always show status line
set showmode		" Show the current mode
set title		" Show the filename in the window titlebar
set showcmd		" Show the (partial) command as it’s being typed
set laststatus=2		" Always show the status line at the bottom.
set hidden		" Hide buffers that have unsaved changes.
set mouse+=a		" Enable mouse support for convenience
set ttyfast		" Optimize for fast terminal connections
set lazyredraw 		" skip redrawing screen in some cases

set backspace=indent,eol,start	" Backspace intuitively in insert mode

set ignorecase		" Case-insensitive search when search is lowercase
set smartcase		" Case-sensitive if search contains uppercase
set hlsearch		" Highlight searches
set incsearch		" Enable searching as you type

nmap Q <Nop> 	" 'Q' in normal mode enters Ex mode. 
		" You almost never want this.
		" Unbind this key binding

set noerrorbells visualbell t_vb=	" Disable audible bell b/c it's annoying
set clipboard=unnamed		" Use the OS clipboard by default

" Temporary training to build the habit of using hjkl instead of arrow keys
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

"--------------------
" Misc configurations
"--------------------

" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" movement relative to display lines
nnoremap <silent> <Leader>d :call ToggleMovementByDisplayLines()<CR>
function SetMovementByDisplayLines()
    noremap <buffer> <silent> <expr> k v:count ? 'k' : 'gk'
    noremap <buffer> <silent> <expr> j v:count ? 'j' : 'gj'
    noremap <buffer> <silent> 0 g0
    noremap <buffer> <silent> $ g$
endfunction
function ToggleMovementByDisplayLines()
    if !exists('b:movement_by_display_lines')
        let b:movement_by_display_lines = 0
    endif
    if b:movement_by_display_lines
        let b:movement_by_display_lines = 0
        silent! nunmap <buffer> k
        silent! nunmap <buffer> j
        silent! nunmap <buffer> 0
        silent! nunmap <buffer> $
    else
        let b:movement_by_display_lines = 1
        call SetMovementByDisplayLines()
    endif
endfunction

" toggle relative numbering
nnoremap <C-n> :set rnu!<CR>
