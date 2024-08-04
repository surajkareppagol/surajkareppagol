call plug#begin('~/.vim/plugged')

  Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  

  " Use release branch (recommended)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " fzf fuzzy finder
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " airline for status line
  Plug 'itchyny/lightline.vim'

  " surround plugin
  Plug 'tpope/vim-surround'

  " surround plugin
  Plug 'tpope/vim-commentary'

  " Dev icons for NERDTree
  Plug 'ryanoasis/vim-devicons'

  " Catppuccin theme
  Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()
