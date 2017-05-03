" autoload/maple.vim - maple helpers

" Get the opening maple tag with guard, if any

function! maple#Calculus()
  let filename = expand("%:t")

  let filename = "calculus"
  let file = expand('$HOME').'/.vim/templates/'.&ft.'/'.filename.'.mv'
  return system("cat ".file)
endfunction

" vim: fdm=marker:sw=2:sts=2:et
