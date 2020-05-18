call plug#begin('~/.vim/plugged')

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'foosoft/vim-argwrap'
Plug 'godlygeek/tabular'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme'
Plug 'morhetz/gruvbox'
Plug 'lervag/vimtex'
Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'

call plug#end()
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

" set tabstop=4
" set expandtab

let g:mapleader=','
syntax on
set number

colorscheme gruvbox
set background=dark

set hlsearch
set incsearch

"you complete me
let g:ycm_global_ycm_extra_conf = '/home/solenji/.vim/plugged/youcompleteme/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0

"mappings
"=============================

map <Leader> <Plug>(easymotion-prefix)
nmap <F8> :TagbarToggle<CR>
"make
nnoremap <C-m> :!make<CR>
"save
nnoremap <C-s> :w<CR>
"close
nnoremap <C-d> :q!<CR>
"warp
nnoremap <silent> <C-a> :ArgWrap<CR>
"nerd auto exit
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"nerd close
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
"auto pairs
let g:AutoPairsShortcutFastWrap = '<C-e>'

"Switch between different windows by their direction`
no <C-j> <C-w>j| "switching to below window
no <C-k> <C-w>k| "switching to above window
no <C-l> <C-w>l| "switching to right window
no <C-h> <C-w>h| "switching to left window
