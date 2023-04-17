call plug#begin('~/.vim/plugged')
  " general
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " code general
  Plug 'Chiel92/vim-autoformat'
  Plug 'Shougo/vimproc.vim'
  Plug 'tpope/vim-surround'
  Plug 'yegappan/grep'
  Plug 'othree/html5.vim'
  Plug 'tpope/vim-eunuch'
  Plug 'tomtom/tcomment_vim'

  " Fuzzy finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Autocomplete
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " git
  Plug 'tpope/vim-fugitive'

  " UI
  Plug 'vim-airline/vim-airline'
  Plug 'sainnhe/everforest'
  Plug 'chriskempson/base16-vim'

  " ruby / rails
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-endwise' " adds end to if, do, def ...
  Plug 'kana/vim-textobj-user'
  Plug 'nelstrom/vim-textobj-rubyblock'
  Plug 'tpope/vim-bundler'
  Plug 'thoughtbot/vim-rspec'

  " Md
  Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}

  " Snippets
  Plug 'honza/vim-snippets'
  Plug 'SirVer/ultisnips'

  " C#
  Plug 'OmniSharp/omnisharp-vim', { 'for': 'cs' }
  Plug 'dense-analysis/ale', { 'for': 'cs' }

  " Switch true to false
  Plug 'AndrewRadev/switch.vim'

call plug#end()
