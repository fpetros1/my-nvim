call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdtree'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'ryanoasis/vim-devicons'
	Plug 'airblade/vim-gitgutter'
	Plug 'ctrlpvim/ctrlp.vim' 
	Plug 'scrooloose/nerdcommenter'
	Plug 'HerringtonDarkholme/yats.vim' 
	Plug 'uiiaoo/java-syntax.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	if !has("win32")
		Plug 'nvim-treesitter/nvim-treesitter'
	endif
call plug#end()
