" For Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim                                                                             
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets' " Default snippets for ultisnips
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()            " required
filetype plugin indent on    " required

" Keybindings for UltiSnips, all of these are ctrl + key                                                         
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" vim-colors-solarized
se t_Co=256
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

" vim-airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1
if has('gui_running')
    set encoding=utf8
    set guifont=Meslo\ LG\ L\ DZ\ for\ Powerline
endif

" Show line number.
se nu

" Tab move
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprev<CR>

" Window split
set splitbelow
set splitright

" Window move
"nnoremap <C-J> <C-W>j
"nnoremap <C-K> <C-W>k
"nnoremap <C-L> <C-W>l
"nnoremap <C-H> <C-W>h

" Convert tab to 4 spaces.
set expandtab
set tabstop=4
set shiftwidth=4

" Change leader as comma
let mapleader=","

" Toggle, find in NERDTree
nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>

" Ignore on ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Easymotion use single leader than default double leaders.
map <Leader> <Plug>(easymotion-prefix)

" show current command
set showcmd

" ctags
set tags+=~/os-team3/tags
cs add ~/os-team3/cscope.out
