"---------------------
" Visual
"---------------------

" Use the Solarized Dark theme
set background=dark
colorscheme solarized
let g:solarized_termtrans=1

"------------------
" Syntax and indent
"------------------

syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them

" highlight current line, but only in active window
augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

filetype plugin indent on
set autoindent

---------------------
"plugin configuration
"---------------------

" markdown
let g:markdown_fenced_languages = [
    \ 'bash=sh',
    \ 'c',
    \ 'json',
    \ 'python',
\]
let g:markdown_syntax_conceal = 0
let g:markdown_folding = 1

" fugitive
set tags^=.git/tags;~

"--------------------- 
"Local customizations
"---------------------                                                                    " local customizations in ~/.vimrc_local
let $LOCALFILE=expand("~/.vimrc_local")                                                   if filereadable($LOCALFILE)
	source $LOCALFILE
endi 
