" autoload/config.vim - config helpers

" Get the opening config tag with guard, if any
function! config#Open()
  let out = "... config ..."
  let filename = expand("%:t")

  if filename == "configure.ac"
    let file = expand('$HOME').'/.vim/templates/'.&ft.'/'.filename
    return system("cat ".file)
  endif

  return out
endfunction

" vim: fdm=marker:sw=2:sts=2:et
