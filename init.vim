set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" shows commands being typed
set showcmd
" " use indentation of previous line
set autoindent
" " use intelligent indentation for C
" " set smartindent 
" " configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" " wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" " turn syntax highlighting on
filetype on
filetype plugin on
set t_Co=256
syntax on
" " colorscheme wombat256
" " turn line numbers on
set number
" " highlight matching braces
set showmatch
" " intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */)


" Tab completion
set wildmenu
set wildmode=list:longest,full


inoremap fd <Esc>


" automatically install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" List Plugins
" Plug 'junegunn/seoul256.vim'
Plug 'benbusby/vim-earthbound-themes'
Plug 'liuchengxu/space-vim-theme'

call plug#end()

set background=dark
colorscheme space_vim_theme

au BufEnter * :source ~/.vim/plugged/vim-earthbound-themes/extend-syntax.vim
