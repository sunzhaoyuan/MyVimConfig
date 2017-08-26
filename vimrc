set number
set clipboard=unnamed
set tabstop=4
set et

" Auto add head info
" .py file into add header
function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1, "# -*- coding: utf-8 -*-")
    normal G
    normal o
endf
autocmd bufnewfile *.py call HeaderPython()

"copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" Vundle settings.
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"put plugins here
Plugin 'Yggdroot/indentLine'    "indent indicator plugin
Plugin 'Valloric/YouCompleteMe' "IDLE-liked YCM Editor
Plugin 'tomasiser/vim-code-dark' "a color scheme
Plugin 'morhetz/gruvbox'        "gruxbox color scheme
call vundle#end()           "required
filetype plugin indent on   "required

" Plugin YCM settings.
set completeopt=longest,menu
let g:ycm_python_binary_path = '/usr./bin.python3'
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_remove_include_errors = 1

" color scheme
syntax on
set background=dark
colorschem codedark

