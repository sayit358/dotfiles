" Neovim configuration
" By sayit358
" :cope

" Set all the things!

set number relativenumber
set mouse=a
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
set hidden
set timeoutlen=500

call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-fugitive'
Plug 'ggandor/lightspeed.nvim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'chaoren/vim-wordmotion'
Plug 'tpope/vim-repeat'
Plug 'olimorris/onedarkpro.nvim'
Plug 'vimwiki/vimwiki', {'branch': 'dev'}
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-obsession'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'sindrets/winshift.nvim'
Plug 'justinmk/vim-dirvish'
Plug 'roginfarrer/vim-dirvish-dovish', {'branch': 'main'}
Plug 'junegunn/vim-easy-align', { 'on':  'EasyAlign' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'Konfekt/vim-CtrlXA'
Plug 'romainl/vim-qf'
Plug 'ThePrimeagen/harpoon'
Plug 'dstein64/nvim-scrollview'
Plug 'stsewd/gx-extended.vim'
Plug 'rcarriga/nvim-notify'
Plug 'nvim-lualine/lualine.nvim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'

" nvim-dap
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'

" Lsp stuff
Plug 'neovim/nvim-lspconfig'
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/vim-vsnip'
Plug 'ray-x/lsp_signature.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'f3fora/cmp-spell'
Plug 'hrsh7th/cmp-path'

call plug#end()

" Change directory to the current file
nnoremap <Space>cd :cd %:p:h<CR>:pwd<CR>

" Remove whitespace
nnoremap <Space>wht :%s/\s\+$//e<CR>

nnoremap <silent> nh :noh<CR>

" Dot command
vnoremap <silent> . :norm .<CR>

lua require'nvim-dap-virtual-text'.setup()

" DiffOrig
command DiffOrig vert new | set buftype=nofile | read ++edit # | 0d_
      \ | diffthis | wincmd p | diffthis

" Navigate wrapped lines
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

" Window navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

au TextYankPost * silent! lua vim.highlight.on_yank{on_visual=false, higroup="IncSearch", timeout=500}

autocmd FileType markdown call matchadd('Error', '[^\d0-\d127]')

command! School execute 'hi Normal guibg=NONE | VimwikiIndex'

map ; <Plug>Lightspeed_;_ft
map , <Plug>Lightspeed_,_ft

nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"

" Close buffer (without closing window)
nnoremap <silent> <expr><Space>q len(getbufinfo("")[0].windows) > 1 ?
    \ ":close<CR>" :
    \ (bufnr("") == getbufinfo({"buflisted": 1})[-1].bufnr ? ":bp" : ":bn")."<bar>bd #<CR>"
