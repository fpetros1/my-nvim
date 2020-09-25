" PLUGINS
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
call plug#end()

" PLUGINS SETS
syntax on
filetype plugin on
let g:python_host_prog  = 'C:/Applics/Python/python.exe'

	"GRUVBOX
let g:gruvbox_guisp_fallback = 'bg'

	" NERDTREE
inoremap jk <ESC>
let NERDTreeWinSize = 30
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

	" PRETTIER
command! -nargs=0 Prettier :CocCommand prettier.formatFile

	" CTRLP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

	" COC
autocmd FileType python let b:coc_root_patterns = ['.git', '.env']
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-tslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-angular',
  \ 'coc-java',
  \ 'coc-xml',
  \ ]

" VIM SETS
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
set statusline^=%f\ -\ %{coc#status()}%{get(b:,'coc_current_function','')}
set incsearch
set backspace=indent,eol,start
set nowrap
set formatoptions-=t 
set noerrorbells
set noswapfile
set smartcase
colorscheme gruvbox

" REMAPS
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <silent> <c-h> :vertical resize -5 <CR>
nnoremap <silent> <c-l> :vertical resize +5 <CR>
nnoremap <silent> <c-j> :resize -5 <CR>
nnoremap <silent> <c-k> :resize +5 <CR>
nnoremap <silent> <c-s> :w <CR>

	" NERDTREE
nmap <C-b> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

	" COC
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <C-f> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent>[g <Plug>(coc-diagnostic-prev)
nmap <silent>]g <Plug>(coc-diagnostic-next)
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <F2> <Plug>(coc-rename)

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

xmap <silent>ca  <Plug>(coc-codeaction-selected)
nnoremap <silent>ca  <Plug>(coc-codeaction-selected)

nmap <silent>ac  <Plug>(coc-codeaction)
nmap <silent>qf  <Plug>(coc-fix-current)

xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

command! -nargs=0 Format :call CocAction('format')

command! -nargs=? Fold :call     CocAction('fold', <f-args>)

command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

nnoremap <leader>d  :<C-u>CocList diagnostics<cr>
nnoremap <leader>e  :<C-u>CocList extensions<cr>
nnoremap <leader>c  :<C-u>CocList commands<cr>
nnoremap <leader>o  :<C-u>CocList outline<cr>
nnoremap <leader>s  :<C-u>CocList -I symbols<cr>
nnoremap <leader>j  :<C-u>CocNext<CR>
nnoremap <leader>k  :<C-u>CocPrev<CR>
nnoremap <leader>p  :<C-u>CocListResume<CR>

