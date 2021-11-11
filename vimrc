call plug#begin('~/.vim/plugged')
  Plug 'fholgado/minibufexpl.vim'
  Plug 'tpope/vim-sensible'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'qpkorr/vim-bufkill'
  Plug 'tomtom/tcomment_vim'
  Plug 'mhinz/vim-signify'
  Plug 'justinmk/vim-dirvish'
  " Plug 'chriskempson/base16-vim'
  " Plug 'morhetz/gruvbox'
  " Plug 'HerringtonDarkholme/yats.vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'lervag/vimtex'
call plug#end()

let g:vimtex_view_method = 'skim'

" Preferences
colorscheme ron
set hlsearch
let mapleader=','
set nu
