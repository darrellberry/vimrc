syntax on
set nocp


" for taglist plugin
filetype plugin on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fix stty on os x
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("unix")
  let s:uname = system("uname -s")
  if s:uname == "Darwin"

    " alias vim="stty stop '' -ixoff; vim"
    noremap <silent> <C-S>          :update<CR>
    vnoremap <silent> <C-S>         <C-C>:update<CR>
    inoremap <silent> <C-S>         <C-O>:update<CR>
  endif
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" copy and paste to clipboard
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamedplus,unnamed,autoselect 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set shiftwidth=4
set tabstop=4
set expandtab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" show current command in status bar
set showcmd

" <TAB> complete settings
set wildmode=list:longest

:filetype on

" Plugin Management
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'majutsushi/tagbar'
Bundle 'https://github.com/altercation/vim-colors-solarized.git'       
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

filetype plugin indent on
let g:EclimCompletionMethod = 'omnifunc'


call vundle#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set background=dark
colorscheme gruvbox




