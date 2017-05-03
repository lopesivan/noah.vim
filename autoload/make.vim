" autoload/make.vim - make helpers

" Get the opening make tag with guard, if any
function! make#Open()
  let out = "... make ..."
  let filename = expand("%:t")
  let extension = expand("%:e")

  if extension == "h"
    return system("echo ".filename."|sed.g_header-cansi-1")
  endif

  return out
endfunction

" vim: fdm=marker:sw=2:sts=2:et
