call plug#begin('~/.vim/plugged')
  " general
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'sheerun/vim-polyglot' " Language Packs

  " code general
  Plug 'Chiel92/vim-autoformat'
  Plug 'Shougo/vimproc.vim'
  Plug 'scrooloose/syntastic'
  Plug 'tpope/vim-surround'
  Plug 'yegappan/grep'
  Plug 'othree/html5.vim'
  Plug 'tpope/vim-eunuch'
  Plug 'tomtom/tcomment_vim'

  " Fuzzy finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'


  " post install (yarn install | npm install)
  Plug 'prettier/vim-prettier', {
        \ 'do': 'yarn install',
        \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

  " Autocomplete
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " git
  Plug 'tpope/vim-fugitive'

  " UI
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'chriskempson/base16-vim'

  " js / ts / coffeescript
  Plug 'leafgarland/typescript-vim'
  Plug 'Quramy/tsuquyomi'
  Plug 'kchmck/vim-coffee-script'
  Plug 'mustache/vim-mustache-handlebars'
  Plug 'pangloss/vim-javascript'
  Plug 'burnettk/vim-angular'

  " ruby / rails
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-endwise' " adds end to if, do, def ...
  Plug 'vim-ruby/vim-ruby'
  Plug 'kana/vim-textobj-user'
  Plug 'nelstrom/vim-textobj-rubyblock'
  Plug 'tpope/vim-bundler'
  Plug 'thoughtbot/vim-rspec'

  " Md
  Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

call plug#end()
