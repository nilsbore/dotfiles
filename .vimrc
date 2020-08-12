" Start by running git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Oceanic Next color theme
" Plugin 'mhartington/oceanic-next'
Plugin 'arcticicestudio/nord-vim'

" Airline plugin
" Plugin 'vim-airline/vim-airline'
Plugin 'itchyny/lightline.vim'

" Show bufferline on top
Plugin 'mengelbrecht/lightline-bufferline'
  
" Visualizing indent in python etc
Plugin 'Yggdroot/indentLine'

" Add support for YouCompleteMe
" See instructions at https://github.com/Valloric/YouCompleteMe#linux-64-bit
Plugin 'Valloric/YouCompleteMe'

" Git change visualization
Plugin 'airblade/vim-gitgutter'

" Don't forget to run :PluginInstall to get plugins

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Theme
syntax enable
" for vim 7
set t_Co=256

" Setup default oceanic next colorscheme
" syntax on
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" colorscheme OceanicNext
let g:nord_bold_vertical_split_line = 1
set fillchars=vert:\ 
colorscheme nord

" let g:airline_theme='oceanicnext'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline#extensions#branch#enabled = 1
" let g:airline_powerline_fonts = 1
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'separator': {
      \   'left': '',
      \   'right': ''
      \ },
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
    \ }
let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#unicode_symbols = 1
let g:lightline#bufferline#min_buffer_count = 1

" Vim git-gutter config
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1

" IndentLine
let g:indentLine_char='·'
" let g:indentLine_color_gui = '#74818b'

" Editor configuration--------------------------
" filetype plugin indent on
set number              " Show the line numbers on the left side.
set tabstop=4           " Render TABs using this many spaces.
set splitright          " Always split to the right
set splitbelow          " Always open new split below
set shiftwidth=4        " when indenting with '>', use 4 spaces width
set expandtab           " On pressing tab, insert 4 spaces
set hlsearch            " Hightlight all search matches

" Make moving between splits more like wm
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Configure the windows and netrw pane
let g:netrw_banner = 0
let g:netrw_liststyle = 3
" Do not show swp and pyc files
let g:netrw_list_hide = '.*\.swp$,.*\.pyc'
au VimEnter * Lexplore 15
au VimEnter * if argc() > 0 | wincmd p | endif
