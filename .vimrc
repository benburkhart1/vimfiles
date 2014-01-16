set nocompatible
set background=dark

set laststatus=2

set encoding=utf-8

set wildmenu " turn on command line completion
set wildmode=list:longest " turn on wild menu with very large list
syntax enable
set expandtab
set tabstop=2
set shiftwidth=2
set incsearch
command! Q  quit
command! W  write
command! Wq wq 
set clipboard=unnamed
set   backupdir=./.backup,.,/tmp
set   directory=.,./.backup,/tmp 

" Custom COmmands
nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <Tab> :tabnext<CR>


set t_Co=256

"colorscheme kolor
colorscheme lucius

"allow deleting selection without updating the clipboard (yank buffer)
vnoremap x "_x
vnoremap X "_X

let g:DirDiffExcludes = "CVS,*.class,*.exe,.*.swp,.*.svn.*,.svn"

" Vi Airline
let g:airline#extensions#tabline#enabled = 1

" Ensure we never enter in Ex mode
nnoremap Q <nop>

" git gutter
:sign define dummy
:execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
let g:airline_powerline_fonts = 1

" PHP Syntastic stuff (skip php-codesniffer because it seems to have issues)
let g:syntastic_php_checkers=['php', 'phpmd']

" For TagList and PHP stuffs
" set the names of flags
let tlist_php_settings = 'php;c:class;f:function;d:constant'
" close all folds except for current file
let Tlist_File_Fold_Auto_Close = 1
" make tlist pane active when opened
let Tlist_GainFocus_On_ToggleOpen = 1
" width of window
let Tlist_WinWidth = 40
" close tlist when a selection is made
let Tlist_Close_On_Select = 1

" This makes tagbar ignore variables with PHP files
let g:tagbar_type_php = {
  \ 'ctagstype' : 'php',
  \ 'kinds' : [
  \ 'i:interfaces',
  \ 'c:classes',
  \ 'd:constant definitions',
  \ 'f:functions',
  \ 'j:javascript functions:1'
  \ ]
\ }

" Pathogen
execute pathogen#infect()
