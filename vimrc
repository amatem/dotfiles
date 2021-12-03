call plug#begin('~/.vim/plugged')
  Plug 'fholgado/minibufexpl.vim'
  Plug 'tpope/vim-sensible'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'qpkorr/vim-bufkill'
  Plug 'tomtom/tcomment_vim'
  Plug 'mhinz/vim-signify'
  Plug 'justinmk/vim-dirvish'
  Plug 'vim-scripts/octave.vim--'
  Plug 'vim-scripts/octave.vim'
  " Plug 'chriskempson/base16-vim'
  " Plug 'morhetz/gruvbox'
  " Plug 'HerringtonDarkholme/yats.vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'lervag/vimtex'
  Plug 'vim-scripts/a.vim'
  Plug 'NLKNguyen/papercolor-theme'
call plug#end()

let g:vimtex_view_method = 'skim'

" Preferences
set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor

" colorscheme ron
set hlsearch
let mapleader=','
set nu
set autoread
