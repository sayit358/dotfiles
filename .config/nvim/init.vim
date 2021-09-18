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
Plug 'sayit358/neomux'
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'sindrets/winshift.nvim'
Plug 'justinmk/vim-dirvish'
Plug 'roginfarrer/vim-dirvish-dovish', {'branch': 'main'}

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
Plug 'hrsh7th/nvim-compe'
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/vim-vsnip'
Plug 'ray-x/lsp_signature.nvim'

call plug#end()

colorscheme onedark

" Change directory to the current file
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" Remove whitespace
nnoremap <Leader>ws :%s/\s\+$//e<CR>

nnoremap <silent> <Backspace> :noh<CR>

lua require'colorizer'.setup()

let g:dap_virtual_text = v:true
let g:sayonara_confirm_quit = 1

nnoremap <silent> <Leader>q :Sayonara<CR>
nnoremap <silent> <Leader>Q :SayoDirvi<CR>
command! SayoDirvi execute 'Sayonara! | Dirvish'
command! BufOnly execute '%bdelete|edit #|normal `"'

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

" WinShift
lua require("winshift").setup()

nnoremap <C-M-H> <Cmd>WinShift left<CR>
nnoremap <C-M-J> <Cmd>WinShift down<CR>
nnoremap <C-M-K> <Cmd>WinShift up<CR>
nnoremap <C-M-L> <Cmd>WinShift right<CR>

" Dirvish
let g:loaded_netrwPlugin = 1
    command! -nargs=? -complete=dir Explore Dirvish <args>
    command! -nargs=? -complete=dir Sexplore belowright split | silent Dirvish <args>
    command! -nargs=? -complete=dir Vexplore leftabove vsplit | silent Dirvish <args>

nmap <silent> <Leader>e :Dirvish<CR>
let g:dirvish_mode = ':sort | sort ,^.*[^/]$, r'

nnoremap <silent> <Leader>v :vsplit +Dirvish<CR>
nnoremap <silent> <Leader>s :split +Dirvish<CR>

call matchadd('Error', '[^\d0-\d127]')
