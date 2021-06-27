set nocompatible              " be iMproved, required
filetype off                  " required
set number
set mouse=a
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set selection=exclusive

nnoremap <SPACE> <Nop>
:nnoremap <space>e :CocCommand explorer --open-action-strategy tab<CR>

" lsp
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

let mapleader = "\<Space>"
set showcmd
set autoindent

set completeopt=noinsert,menuone,noselect

autocmd BufWritePre "dart" dartfmt

nmap fmt <Plug>(coc-format)

let g:dart_format_on_save = 1
let g:floaterm_autoclose = 1

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next' 
      \}
Plug 'dart-lang/dart-vim-plugin'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'voldikss/vim-floaterm'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

filetype plugin indent on


