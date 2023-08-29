let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug 'fholgado/minibufexpl.vim'
  Plug 'tpope/vim-sensible'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'qpkorr/vim-bufkill'
  Plug 'tomtom/tcomment_vim'
  Plug 'mhinz/vim-signify'
  Plug 'justinmk/vim-dirvish'
  Plug 'editorconfig/editorconfig-vim'
  " Plug 'lervag/vimtex'
  Plug 'vim-scripts/a.vim'
call plug#end()

" let g:vimtex_view_method = 'skim'
" let g:vimtex_quickfix_ignore_filters = [
" 			\'Underfull',
" 			\'Overfull',
" 			\'specifier changed to',
" 			\'You have requested',
" 			\'Missing number, treated as zero.',
" 			\'There were undefined references',
" 			\'Citation %.%# undefined',
" 			\'Double space found.',
" 			\'You are using breakurl while processing via pdflaex.',
" 			\'Package pgfplots Warning: running in backwards compatibility mode',
" 			\'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
" 			\]
" let g:vim_log_verbose = 0

" Preferences
" set t_Co=256   " This is may or may not needed.
" set background=dark
" colorscheme ron
set hlsearch
let mapleader=','
set nu
set autoread

" au FileType python setlocal formatprg=autopep8\ -
