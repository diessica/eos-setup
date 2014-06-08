" Diéssica (diessicode)
" Vim settings :-)

set nocompatible

" vundle {
   filetype off
   set rtp+=~/.vim/bundle/vundle
   call vundle#rc()
   Bundle 'gmarik/vundle'
" }

" my bundle {
   " languages
   Bundle 'pangloss/vim-javascript'
   Bundle 'digitaltoad/vim-jade.git'
   Bundle 'wavded/vim-stylus'
   Bundle "jtratner/vim-flavored-markdown.git"

   " fast workflow
   Bundle 'terryma/vim-multiple-cursors'
   Bundle 'nelstrom/vim-markdown-preview'
   Bundle 'ervandew/supertab'
   Bundle 'vim-scripts/sudo.vim'
   Bundle 'bogado/file-line'
   Bundle 'godlygeek/tabular'
   Bundle 'mattn/emmet-vim'
   Bundle 'Keithbsmiley/investigate.vim'

   " management + navigation
   Bundle 'scrooloose/nerdtree'
   Bundle 'kien/ctrlp.vim'
   Bundle 'Yggdroot/indentLine'

   " interface
   Bundle 'zeis/vim-kolor'
   Bundle 'morhetz/gruvbox'
   Bundle 'mikewest/vimroom'
   Bundle 'bling/vim-airline'

   " git
   Bundle 'airblade/vim-gitgutter'

   " snippets
   Bundle 'honza/vim-snippets'
" }

" general {
   set title
   set history=1000
   set wildmenu
   set hidden
   set nobackup
   set directory=$HOME/.vim/tmp//,.
   set encoding=utf-8
   set t_Co=256
   set ruler
   set smartcase
   set ignorecase
   set scrolloff=3
   filetype plugin indent on
" }

" code {
   syntax on
   set number
   set backspace=indent,eol,start

   " indent
   set smarttab
   set autoindent
   set copyindent
   set shiftwidth=4 tabstop=4 expandtab

   " line
   set nowrap 
   set linespace=3
   set cursorline
"}

" plugins {
   " airline
   set laststatus=2

   " nerdtree
   autocmd VimEnter * NERDTree
   set autochdir
   let NERDTreeChDirMode=2
   nnoremap <leader>n :NERDTree .<CR>

   " gruvbox
   set bg=dark
" }

" snippets {
" }
 
" interface {
   colorscheme gruvbox
" }
 
" keybindings {
   set pastetoggle=<F2>
   noremap ; :
   noremap <leader>nt :NERDTreeToggle<CR>
" }
