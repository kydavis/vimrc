"Vundle configuration
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugins:
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'

"Required to go together
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'

"Plugin 'valloric/youcompleteme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Standard configuration
syntax on
set number
set mouse=i
set showcmd
set ruler

"Turn off audible bell
set vb

"turn off autocomments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Direction key remmapping, to force myself to not use arrow keys
inoremap jk <esc><right>
"noremap j gj
"noremap k gk
"inoremap <esc> <nop>
"noremap j k
"noremap k j
"noremap <up> <nop>
"noremap <left> <nop>
"noremap <right> <nop>
"noremap <down> <nop>

"setting global and local map leaders
let mapleader = " "
let maplocalleader = "\\"

"mapping automatic curly bracers for function in insert mode
"inoremap { {<return><return>}<up>
"inoremap ( ()<left>

"mapping L and H to skip to the end and start of lines in command mode
nnoremap <leader>L <end>
nnoremap <leader>H <home>

"moving lines up or down
nnoremap <leader>- ddp
nnoremap <leader>_ ddkkp

"sourcing and editing ~/.vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"typo corrections
iabbrev voif void
iabbrev wirte write
iabbrev unsgined unsigned

"Insert comment section
nnoremap <leader>C	i<return>/*<return><home>**<return><home>*/<return><up><up><end><space>

" Autocmatically have the include for libft in the function along with the standard header
"command Libftheader normal :Stdheader<ENTER>i#include "libft.h"<ENTER><ENTER>

"tab inserts a tab in normal mode
nnoremap <leader><tab> i<tab><esc>

" Highlight characters over 80 columns long

auto BufNewFile,BufRead *.c highlight OverLength ctermbg=red ctermfg=white guibg=#592929
auto BufNewFile,BufRead *.c match OverLength /\%81v.\+/

"switch between split windows
noremap <C-J> <C-w><up>
nnoremap <C-H> <C-w><left>

"Insert testing markers at the end of the line:
nnoremap <leader>t <end>a///<esc>

" <space> select current word
noremap <leader><space> viw;

" Wrap selection in character:
nnoremap <leader>c	viw<esc>a*/<esc>hbi/*<esc>lel
nnoremap <leader>"	viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>'	viw<esc>a'<esc>hbi'<esc>lel
vnoremap <leader>c	<esc>`>a*/<esc>`<i/*<esc>`>l
vnoremap <leader>d	<esc>`>xx`<xx`>l
vnoremap <leader>(	<esc>`>a)<esc>`<i(<esc>`>l
vnoremap <leader>"	<esc>`>a"<esc>`<i"<esc>`>l

"tag navigation
nnoremap <leader><C-[> <C-t>
nnoremap <leader><C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Commands

command! Hexdump %!xxd
command! LoadCpp %r ~/.vim/templates/Class.cpp
command! LoadHpp %r ~/.vim/templates/Class.hpp

" -------------------------------------------------
" vimtemplates ~/.vimrc configuration, by Dr. Beco:
"
"	The file path is configurated by:
let g:VIMFILESDIR="~/.vim/" "_vimtemplates_
"
" Template Configuration
let g:author="Your Name Here" "_vimtemplates_
let g:email="your@email.here" "_vimtemplates_
let g:webpage="www.yoursite.com" "_vimtemplates_
let g:phone="Blaaahhh" "_vimtemplates_
"
" If doxygen plugin is installed, you can use:
"let g:DoxygenToolkit_authorName=g:author "_vimtemplates_
"
" -------------------------------------------------

