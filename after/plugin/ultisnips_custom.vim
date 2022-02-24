" ultisnips_custom.vim - Custom UltiSnips settings
" Maintainer:   Noah Frederick

" if exists(":SkelEdit") || !has("python")
if exists(":SkelEdit")
  echo "UltiSnips requires SkelEdit and Python to be installed."
  finish
endif

augroup ultisnips_custom
  autocmd!
  autocmd BufNewFile * silent! call util#snippet#InsertSkeleton()
  autocmd BufEnter * execute "inoremap <silent> "
        \ . g:UltiSnipsExpandTrigger
        \ . " <C-r>=util#snippet#ExpandSnippetOrCompleteMaybe()<CR>"
augroup END

" vim: fdm=marker:sw=2:sts=2:et
