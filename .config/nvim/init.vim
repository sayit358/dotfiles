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
set clipboard+=unnamedplus
set noswapfile
set noshowmode
set termguicolors
set shiftwidth=2 softtabstop=2
set tabstop=2
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
Plug 'vimwiki/vimwiki', {'branch': 'dev'}
Plug 'tpope/vim-unimpaired'
Plug 'olimorris/onedark.nvim'
Plug 'tpope/vim-obsession'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'karb94/neoscroll.nvim'
Plug 'sayit358/neomux'
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'

" nvim-dap
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'theHamsta/nvim-dap-virtual-text'

" Lsp stuff
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/vim-vsnip'
Plug 'ray-x/lsp_signature.nvim'

call plug#end()

colorscheme onedark

" Change directory to the current file
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

"Remove whitespace
nnoremap <Leader>ws :%s/\s\+$//e<CR>

lua require'colorizer'.setup()

let g:dap_virtual_text = v:true

autocmd TermOpen * setlocal nonumber norelativenumber

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

nnoremap <Leader>q :Sayonara<CR>
command! BufOnly execute '%bdelete|edit #|normal `"'

" DiffOrig
command DiffOrig vert new | set buftype=nofile | read ++edit # | 0d_
		\ | diffthis | wincmd p | diffthis

" Navigate wrapped lines
noremap j gj
noremap k gk

" Window navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

let g:netrw_banner = 0
let g:netrw_liststyle = 3

lua require('neoscroll').setup()

au TextYankPost * silent! lua vim.highlight.on_yank{on_visual=false, higroup="IncSearch", timeout=500}
