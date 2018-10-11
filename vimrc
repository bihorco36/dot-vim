let g:ale_emit_conflict_warnings = 0

source ~/.vim/plugins.vim

" UI
colorscheme base16-default-dark
let base16colorspace=256
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
syntax on

" use spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab

set backupdir=/home/jbinder/.vim/tmp
set directory=/home/jbinder/.vim/tmp

" buffer stuff
" set hidden

" enable mouse
set mouse=a

" enable line numbers
set number
" highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" syntastic
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ctrlp vim
set wildignore+=*tmp/*,*node_modules/*,*dist/*,*.so,*.swp,*.zip

" indentation
filetype plugin indent on

" map
let mapleader=","
nmap <F1> <nop>
map <F2> orequire 'pry'; binding.pry unless @pstop<ESC>
nnoremap <silent> <F3> :Rgrep<CR>
nmap <F1> <nop>

nnoremap <F4> <C-]> 

" CtrlP
nnoremap scp :CtrlP<CR>
nnoremap scl :CtrlP .<CR>
nnoremap scb :CtrlPBuffer<CR>
nnoremap scr :CtrlPMRU<CR>
nnoremap sct :CtrlPTag<CR>

" tsuquyomi
nnoremap td :TsuDefinition<CR>
nnoremap ti :TsuImport<CR>
nnoremap ts :TsuSearch<CR>
nnoremap tr :TsuRenameSymbol<CR>

" ctags
nnoremap <F5> :!~/.vim/bin/ctags.sh<CR>
set tags=./tags;/

cabbrev E Explore

" autostart nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open current file in opera
nnoremap <F12>o :exe ':silent !opera %'<CR>

" JS Stuff
let g:mustache_abbreviations = 1

" Laststatus
set laststatus=2

" base16 stuff
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" load rubyblock
runtime macros/matchit.vim
set nocompatible

if has("autocmd")
  filetype indent plugin on
endif
