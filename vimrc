colorscheme molokai

set number
set smartindent
set tabstop=4
set shiftwidth=4 
set expandtab
set clipboard=unnamedplus 
set t_Co=256

"Comment style
set comments=sl:/**,mb:<Tab>,elx:*/

"Plugin for indent guides
let g:indentLIne_color_term = 039
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_char = '¦' 
"NERDTree 
"let NERDTreeShowHidden=1

"Vundle system options
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'UltiSnips'                                       
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Yggdroot/indentLine'
filetype plugin indent on
"Needs to stay after indent on, so it is not suppressed by it
:syntax on 

"Java Easy Compile and run
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>

"To add empty lines easily
nmap <Leader>O O<Esc>j
nmap <Leader>o o<Esc>k

