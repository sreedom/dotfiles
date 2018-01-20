" vim-plug settings
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
" Initialize plugin system
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'maralla/completor.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" colorschemes
Plug 'liuchengxu/space-vim-dark'
Plug 'junegunn/seoul256.vim'
call plug#end()

" vim-plug settings end
" -----------------------------------------------------------------------------------------------------------------

" default settings
set nu
set autoindent
set ignorecase
set hlsearch
colorscheme space-vim-dark
set nocompatible
set  mouse=a
" Yank/Paste goes into/from the clipboard.
set clipboard=unnamed

" relative numbers
set relativenumber

" move between windows using ctrl + arrows
nnoremap <C-Down> <C-w>j<CR>
nnoremap <C-Up>   <C-w>k<CR>
nnoremap <C-Left> <C-w>h<CR>
nnoremap <C-Right> <C-w>l<CR>


"plugin specific configuration
"NerdTree
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 1

highlight ALEError cterm=undercurl
let g:ale_fixers = {
\    'python': [
\        'yapf'
\    ],
\}
let g:ale_linters = {
\    'python': [
\        'flake8'
\    ],
\}
nmap <F8> <Plug>(ale_fix)
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
" Keymaps
nnoremap <C-p> :Files<CR>     
nnoremap <Up> gk
nnoremap <Down> gj

cnoreabbrev Q q

