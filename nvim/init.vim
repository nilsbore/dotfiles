" Steps to install neovim and plugins:
"
" 1. Install neovim:
"
"     sudo add-apt-repository ppa:neovim-ppa/unstable
"     sudo apt-get update
"     sudo apt-get install neovim
"
" 2. Install python plugin:
"
"     #sudo pip install neovim
"     sudo pip3 install neovim
"
" 3. Copy this file to:
"
"     $HOME/.config/nvim/init.vim
"
" 4. Install dein.vim:
"
"     cd /tmp && \
"     curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh &&\
"     mkdir -p $HOME/.random &&\
"     sh ./installer.sh $HOME/.random ||\
"     echo 'Failed.'
"
" 5. Install autocomplete for python:
"
"     sudo pip3 install jedi
"     sudo pip3 install yapf

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/nbore/.random/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/nbore/.random')
  call dein#begin('/home/nbore/.random')

  " Let dein manage dein
  " Required:
  call dein#add('/home/nbore/.random/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " Code completion
  call dein#add('Shougo/deoplete.nvim')
  " Nice color scheme
  call dein#add('mhartington/oceanic-next')
  " The status bar at the bottom
  call dein#add('vim-airline/vim-airline')
  " Visualizing indent in python etc
  call dein#add('Yggdroot/indentLine')
  " Git commands and shows the branch in airline
  call dein#add('tpope/vim-fugitive')
  " Python jedi autocomplete, load only for python files
  call dein#add('zchee/deoplete-jedi', {'on_ft': 'python'})

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" Editor configuration--------------------------
set number              " Show the line numbers on the left side.<Paste>
set tabstop=4           " Render TABs using this many spaces.
set splitright          " Always split to the right
set splitbelow          " Always open new split below

" Make moving between splits more like wm
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Quit terminal mode by pressing ESC
tnoremap <Esc> <C-\><C-n>

" Plugin configuration--------------------------
" Add deoplete completion
call deoplete#enable()

autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr>
autocmd CompleteDone * pclose " To close preview window of deoplete automagically

" Airline
let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#branch#enabled = 1

" IndentLine
let g:indentLine_char='·'
let g:indentLine_color_gui = '#74818b'

" Looks configuration--------------------------
" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext
