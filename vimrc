call plug#begin('~/.vim/plugged')
  Plug 'fholgado/minibufexpl.vim'
  Plug 'tpope/vim-sensible'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'qpkorr/vim-bufkill'
  Plug 'tomtom/tcomment_vim'
  Plug 'mhinz/vim-signify'
  Plug 'justinmk/vim-dirvish'
  Plug 'chriskempson/base16-vim'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'editorconfig/editorconfig-vim'
call plug#end()

" Preferences
colorscheme base16-phd
set hlsearch
let mapleader=','
set rnu
