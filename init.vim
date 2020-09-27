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

" VIM SETS
syntax on
filetype plugin on

set updatetime=50
set nu
set smarttab
set cindent
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

" REMAPS
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> <c-h> :vertical resize -5 <CR>
nnoremap <silent> <c-l> :vertical resize +5 <CR>
nnoremap <silent> <c-j> :resize -5 <CR>
nnoremap <silent> <c-k> :resize +5 <CR>
nnoremap <silent> <c-s> :w <CR>

