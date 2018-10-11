call plug#begin('~/.vim/plugged')
  " general
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'sheerun/vim-polyglot'
  Plug 'greyblake/vim-preview'

  " code general
  Plug 'Chiel92/vim-autoformat'
  Plug 'Shougo/vimproc.vim'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/syntastic'
  Plug 'Chiel92/vim-autoformat'
  Plug 'vim-scripts/bufkill.vim' " provides BD, BW, BUN
  Plug 'tpope/vim-surround'
  Plug 'yegappan/grep'
  Plug 'tpope/vim-cucumber'
  Plug 'ervandew/supertab'
  Plug 'othree/html5.vim'
  Plug 'godlygeek/tabular'

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

  " ruby / rails
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-endwise' " adds end to if, do, def ...
  Plug 'vim-ruby/vim-ruby'
  Plug 'kana/vim-textobj-user'
  Plug 'nelstrom/vim-textobj-rubyblock'
  Plug 'tpope/vim-bundler'

  " Elm
  Plug 'ElmCast/elm-vim'
  Plug 'w0rp/ale'

  " Md
  Plug 'suan/vim-instant-markdown'

  " Crystal
  Plug 'rhysd/vim-crystal'


call plug#end()
