" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

set nocompatible		" be iMproved, required
filetype off 			" required
call plug#begin('~/.config/nvim/autoload/plugged')
   "Coc
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Theme
	Plug 'norcalli/nvim-colorizer.lua'
  Plug 'joshdick/onedark.vim'

  " Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
  " Bufferline
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'akinsho/bufferline.nvim'
  " Golang
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  " Statusline
  Plug 'nvim-lualine/lualine.nvim'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  " Colorizer
  Plug 'norcalli/nvim-colorizer.lua'
  " Bracket colorizer
  Plug 'junegunn/rainbow_parentheses.vim'
  " Sneak (navigate text)
  Plug 'justinmk/vim-sneak'
  " Project Management with Startify
  Plug 'mhinz/vim-startify'
  "Plug 'ryanoasis/vim-devicons'
  "Plug 'nvim-telescope/telescope.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  " Which key
  Plug 'liuchengxu/vim-which-key'
  " NERDCommenterToggle
  Plug 'preservim/nerdcommenter'
  " Goyo
  Plug 'junegunn/goyo.vim'
  " Floaterm
  Plug 'voldikss/vim-floaterm'
  " Markdown previe
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}  
  call plug#end()


