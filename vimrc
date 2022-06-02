set encoding=utf-8
let g:ale_emit_conflict_warnings = 0

source ~/.vim/plugins.vim

" UI
colorscheme base16-default-dark
let base16colorspace=256
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set guioptions+=a " Adds Clipboard
set go-=L " Removes left hand scroll bar
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
syntax on

" use spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab

set backupdir=/home/jbinder/.vim/tmp
set directory=/home/jbinder/.vim/tmp


" enable mouse
set mouse=a

" enable line numbers
set number
" highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" syntastic
let g:syntastic_typescript_checkers = ['tsuquyomi']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" ctrlp vim
set wildignore+=*tmp/*,*node_modules/**,*dist/*,*.so,*.swp,*.zip,*spec/coverage**,*spec/reports**

" indentation
filetype plugin indent on

" map
let mapleader=","
nmap <F1> <nop>
map <F2> orequire 'pry'; binding.pry unless @pstop<ESC>
map <F7> oinclude_context 'storage_helpers'<ESC>o<ESC>
map <F8> $bhi, storage: true<ESC>
map <F9> 5G$bhi, storage: true<ESC>
nnoremap <silent> <F3> :Rgrep<CR>
nmap <F1> <nop>
map <F6>  :%s/:\([^=,']*\) =>/\1:/gc<CR>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "terminal spring rspec {spec}"

nnoremap <F4> <C-]> 

" Fuzzy Finder
nnoremap scl :Files<CR>
nnoremap scm :Files %:p:h<CR>
nnoremap scr :History<CR>
nnoremap sct :Tags<CR>


" tsuquyomi
let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_shortest_import_path = 1
nnoremap td :TsuDefinition<CR>
nnoremap ti :TsuImport<CR>
nnoremap ts :TsuSearch<CR>
nnoremap tr :TsuRenameSymbol<CR>

" ctags
nnoremap <F5> :!~/.vim/bin/ctags.sh<CR>
set tags=./tags;/

cabbrev E Explore

" open current file in opera
nnoremap <F12>o :exe ':silent !google-chrome-stable %'<CR>

" JS Stuff
let g:mustache_abbreviations = 1

" Laststatus
set laststatus=2

" base16 stuff
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" clipboard
set clipboard=unnamed

" Autocomplete
let g:deoplete#enable_at_startup = 1

"""""""""""""""""
"""""" COC
"""""""""""""""""

" buffer stuff
set hidden

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=150

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

let g:coc_global_extensions = ['coc-solargraph']

" Coc Snippets

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet
