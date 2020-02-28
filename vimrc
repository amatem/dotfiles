call plug#begin('~/.vim/plugged')
  Plug 'fholgado/minibufexpl.vim'
  Plug 'tpope/vim-sensible'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'qpkorr/vim-bufkill'
  Plug 'tomtom/tcomment_vim'
  Plug 'mhinz/vim-signify'
  Plug 'justinmk/vim-dirvish'
  Plug 'prabirshrestha/async.vim'
  Plug 'chriskempson/base16-vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'mattn/vim-lsp-settings'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'editorconfig/editorconfig-vim'
call plug#end()

" Preferences
colorscheme base16-phd
set hlsearch
let mapleader=','
set rnu

" vim-lsp options
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    nnoremap <silent> <leader>gd :LspDefinition<CR>
    nnoremap <silent> <leader>gdc :LspDeclaration<CR>
    nnoremap <silent> <leader>gi :LspImplementation<CR>
    nnoremap <silent> <leader>gt :LspTypeDefinition<CR>
    nnoremap <silent> <leader>gr :LspReferences<CR>

    nnoremap <silent> <leader>pd :LspPeekDefinition<CR>
    nnoremap <silent> <leader>pdc :LspPeekDeclaration<CR>
    nnoremap <silent> <leader>pi :LspPeekImplementation<CR>
    nnoremap <silent> <leader>pt :LspPeekTypeDefinition<CR>
    nnoremap <silent> <leader>ph :LspHover<CR>
    nnoremap <silent> <leader>pq <c-w><c-z>

    nnoremap <silent> <leader>r :LspRename<CR>
    nnoremap <silent> <leader>d :LspDocumentDiagnostics<CR>
    nnoremap <silent> <leader>q :ccl <bar> lcl<CR>
endfunction

augroup vimlsp
  autocmd!
  autocmd FileType python,vim,git,snippet call asyncomplete#enable_for_buffer()
augroup END

let g:lsp_highlights_enabled = 0
let g:lsp_preview_doubletap = 0
let g:lsp_textprop_enabled = 0
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_signs_enabled = 1

" asyncomplete options
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

imap <c-space> <Plug>(asyncomplete_force_refresh)

let g:asyncomplete_auto_popup = 1
let g:asyncomplete_remove_duplicates = 1


autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

set completeopt+=preview
