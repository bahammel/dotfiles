"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    syntax highlighting,                   "
"                     window preferences,                   "
"                             &                             "
"                    general configuration                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the color encoding for vim
set term=xterm-256color

filetype on
filetype plugin on
filetype plugin indent on

syntax on
colorscheme koehler

" set the backup director for swap files directory
set backupdir=~/.vim_tmp
set swapfile
set directory=~/.vim_tmp

"Spell Check
set spell
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red

"copy and paste - use system clipboard
set clipboard=unnamed

set nowrap
set sidescroll=5

"Enables line numbering
"to turn of line numbering type :set nonumber
set number

"Don't use vi compatibility
set nocompatible

"set the commend height
set cmdheight=2

"show current vim mode
set showmode

"Show current command
set showcmd

"Allows you to click around the text editor with your mouse to move the cursor
set mouse=a

"This makes the backspace key function like it does in other programs.
set backspace=2

"Draw a red boarder at the limit of 80 characters if using python 
autocmd FileType python set colorcolumn=81

hi TabLine      gui=none ctermfg=254 ctermbg=238 cterm=none
hi TabLineSel   gui=bold ctermfg=231 ctermbg=235 cterm=bold
hi TabLineFill  gui=none ctermfg=254 ctermbg=238 cterm=none

hi StatusLine      gui=none ctermfg=254 ctermbg=238 cterm=bold
hi StatusLineNC    gui=bold ctermfg=231 ctermbg=235 cterm=none

"Turn on modeline for recognizing hydra files
set modeline 
set modelines=3

au BufNewFile,BufRead *.html set filetype=htmldjango

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""    
"                      code completion                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Highlights matching brackets in programming languages
set showmatch

autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType python set omnifunc=pysmell#Complete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype tex 
autocmd Filetype '' setlocal nospell

inoremap <C-space> <C-x><C-o>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      bracket completion                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap #    #x<C-h>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      NERD Tree                            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:nerdtree_tabs_open_on_console_startup = 1
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeDirArrows = 0 "remove arrows 

map \t :NERDTreeTabsToggle<CR>
map \w :BookmarkToRoot web<CR>
map \r :BookmarkToRoot research<CR>
map \b :BookmarkToRoot blog<CR>
map \d :BookmarkToRoot docs<CR>
map \R :BookmarkToRoot root<CR>
map \n :BookmarkToRoot nerd<CR>
map \c :BookmarkToRoot class<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       indenting                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"If you're indented, new lines will also be indented
set autoindent

"Automatically indents lines after opening a bracket in programming languages
"set smartindent

"How much space Vim gives to a tab
set tabstop=4
set shiftwidth=4

"expand tab into spaces
set expandtab

"Improves tabbing
set smarttab

"keeps hash tags at current position
"autocmd BufRead *.py inoremap #X<c-h>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       searching                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Ignore case
set ignorecase

"Try to be smart about case when searching
set smartcase

"search results are highlighted 
set hlsearch

