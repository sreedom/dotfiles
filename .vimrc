" default settings
set nu
set autoindent
set ignorecase
set hlsearch
" colorscheme desert
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


" vim-plug settings
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'maralla/completor.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'


" Initialize plugin system
call plug#end()
" vim-plug settings end

"plugin specific configuration
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 1

" Keymaps
nnoremap <C-p> :Files<CR>     
nnoremap <Up> gk
nnoremap <Down> gj

