" EXTENSIONS
let g:python_host_prog  = '$PYTHON'

" IMPORTS
source $NVIM_CONFIG_HOME/plugins.vim
source $NVIM_CONFIG_HOME/NERDTree.vim
source $NVIM_CONFIG_HOME/coc.vim
source $NVIM_CONFIG_HOME/prettier.vim
source $NVIM_CONFIG_HOME/gruvbox.vim
source $NVIM_CONFIG_HOME/ctrlp.vim 
source $NVIM_CONFIG_HOME/airline.vim
if !has("win32")
    source $NVIM_CONFIG_HOME/treesitter.vim
endif

" VIM SETS
syntax on
filetype plugin on

let mapleader=" "
set updatetime=750
set nu
set smarttab
set cindent
set expandtab
set tabstop=4
set shiftwidth=4
if has("patch-8.1.1564")
	set signcolumn=number
else	
	set signcolumn=yes
endif
set hidden 
set shortmess+=c
"set statusline^=%f\ -\ %{coc#status()}%{get(b:,'coc_current_function','')}
set incsearch
set backspace=indent,eol,start
set nowrap
set formatoptions-=t 
set noerrorbells
set noswapfile
set smartcase
set noshowmode
colorscheme gruvbox
highlight Normal ctermbg=none

" REMAPS
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> <c-h> :vertical resize -5 <CR>
nnoremap <silent> <c-l> :vertical resize +5 <CR>
nnoremap <silent> <c-j> :resize -5 <CR>
nnoremap <silent> <c-k> :resize +5 <CR>
nnoremap <silent> <c-s> :w <CR>
nnoremap <silent> <c-q> :q <CR>
nnoremap <silent> <leader>h :sp <CR>
nnoremap <silent> <leader>v :vsp <CR>
nnoremap <silent> <leader>n :noh <CR>
nnoremap <silent> <leader>ff :Format <CR>
nnoremap <silent> <leader>tn :tabnew <CR>
nnoremap <silent> <leader>tc :tabc <CR>
	" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy
	" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
