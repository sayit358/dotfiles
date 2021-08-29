" Neovim configuration
" By sayit358
" :cope

" Set all the things!

set number relativenumber
set mouse=a
set hidden
set lazyredraw
set confirm
set splitbelow splitright
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=99
set ignorecase
set clipboard+=unnamedplus
set noswapfile
set noshowmode
set termguicolors
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smartindent

call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-fugitive'
Plug 'ggandor/lightspeed.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'chaoren/vim-wordmotion'
Plug 'tpope/vim-repeat'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-unimpaired'
Plug 'shadmansaleh/lualine.nvim'
Plug 'olimorris/onedark.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'tpope/vim-obsession'
Plug 'romainl/vim-devdocs'
Plug 'tpope/vim-abolish'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'simeji/winresizer'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'

" nvim-dap
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'nvim-telescope/telescope-dap.nvim'

" Lsp config
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/vim-vsnip'
Plug 'ray-x/lsp_signature.nvim'

call plug#end()

colorscheme onedark_nvim

" Change directory to the current file
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

"Remove whitespace
nnoremap <Leader>ws :%s/\s\+$//e<CR>

lua require'colorizer'.setup()
