call plug#begin('~/.vim/plugged')

" directory tree -- https://github.com/kyazdani42/nvim-tree.lua
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" telescope fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" comment out lines
Plug 'tpope/vim-commentary'

" color scheme
Plug 'sainnhe/everforest'

call plug#end()

colorscheme everforest

" easier navigation between split panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
