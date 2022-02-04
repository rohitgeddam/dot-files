syntax on

inoremap jk <Esc>
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

" SET PYTHON PATH *****************************************************
set pythonthreedll=C:\Users\Rohit\AppData\Local\Programs\Python\Python38\python38.dll
set pythonthreehome=C:\Users\Rohit\AppData\Local\Programs\Python\Python38
" **********************************************************************

set colorcolumn=80
highlight ColorColumn ctermbg=0

set nocompatible              " be iMproved, required
filetype off                  " required

" VUNDLE ***************************************************************
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo

Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
Plugin 'vim-utils/vim-man'
" Plugin 'lyuts/vim-rtags'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mbbill/undotree'
Plugin 'preservim/nerdtree'
Plugin 'wahidrahim/resize-font'
Plugin 'vim-scripts/confirm-quit'
Plugin 'ycm-core/YouCompleteMe'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" VUNDLE END ***********************************************************


" COLOR SCHEME *************************************
" OPTIONS gurvbox,sunburst

colorscheme gruvbox
set background=dark

" COLOR SCHEME END *****************************************************


if executable('rg')
    let g:rg_derive_root='true'
endif


let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>b :NERDTreeToggle<CR>
nnoremap <leader>. :vertical resize +5<CR>
nnoremap <leader>, :vertical resize -5<CR>
nnoremap <leader>+ :resize +5<CR>
nnoremap <leader>- :resize -5<CR>
map <leader><leader>+ :ResizeFontBigger<CR>
map <leader><leader>- :ResizeFontSmaller<CR>

"------------AUTO-COmmands-------"
"Automatically source the vimrc file on save"
"autocmd BufWritePost .vimrc source % 	"this is a problem it freezes everytime
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
