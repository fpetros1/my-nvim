" Variables
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
  \ 'coc-go',
  \ 'coc-yaml',
  \ ]

" REMAPS
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

