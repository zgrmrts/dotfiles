set nocompatible              " be iMproved, required
filetype off                  " required by vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
call vundle#end()
filetype plugin indent on     " required by vundle

" Enable the status bar (airline)
set laststatus=2
set t_Co=256


" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" tab switching
set switchbuf=usetab
nnoremap <F8> :bnext<CR>
nnoremap <S-F8> :bprevious<CR>


" Options
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands

" Searching
set incsearch           " do incremental searching
set ic                  " Search not case sensitive - ozgur
set smartcase           " case sensitive only when input has capital letters
" cursor altindaki kelimeyi arama
nnoremap <F5> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
" clear search highlight
nnoremap <F4> :noh<CR>

" Line numbering
set number              " Show line numbers
set relativenumber      " Satir numaralari bulunulan satira gore relative
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
" mapping to toggle line numbers
noremap <F3> :set invnumber<CR>:set invrelativenumber<CR>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" tablar
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Enable switching from modified buffer
set hidden

" show indicators for tab and trailing spaces
set listchars=tab:>-,trail:~
set list

" F2 toggle paste from other application on and off (show in status line)
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Special location for swap backup and undo files (run following first)
"   mkdir ~/.vim/backup
"   mkdir ~/.vim/swap
"   mkdir ~/.vim/undo
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" ctrlp open new file in current window
let g:ctrlp_open_new_file = 'r'
" ctrlp first file to current, others hidden, switch to first
let g:ctrlp_open_multiple_files = 'ijr'
" ctrlp highlight color of selected file
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" disable folding
set nofoldenable
let g:vim_markdown_folding_disabled=1

" force vim .md extension as markdown document
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let g:gitgutter_sign_column_always=1
let g:gitgutter_realtime=1
let g:gitgutter_eager=1
