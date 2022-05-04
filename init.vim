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

" lsp config
Plug 'neovim/nvim-lspconfig'

" make adding unicode easier
Plug 'https://github.com/chrisbra/unicode.vim.git'

call plug#end()

" following has to do with getting colors to work
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" Important!!
if has('termguicolors') && ($TERM == 'alacritty' || $TERM == 'screen-256color')
    set termguicolors
endif
set background=dark
let g:everforest_background = 'soft'
colorscheme everforest
" spell check highlighting must be listed after set background
hi clear SpellBad
hi clear SpellCap
hi SpellBad cterm=reverse gui=reverse

" easier navigation between split panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
