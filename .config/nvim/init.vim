syntax on
set number relativenumber
set mouse=a
set guicursor+=i:blinkon1
set hidden
set lazyredraw
set confirm
set splitbelow splitright
set foldmethod=syntax
set foldlevel=99
set ignorecase
set smartcase
set termguicolors
set clipboard+=unnamedplus

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'voldikss/vim-floaterm'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jbgutierrez/vim-better-comments' 
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'puremourning/vimspector'
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plug 'tpope/vim-commentary'
Plug 'honza/vim-snippets'
Plug 'unblevable/quick-scope'
Plug 'szw/vim-maximizer'
Plug 'tpope/vim-surround'
Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'

call plug#end()

" Show documentation in preview window
nnoremap <silent> <Leader>sd  :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nnoremap <CR> :noh<CR><CR>
