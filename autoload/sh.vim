" autoload/sh.vim - sh helpers

" Get the opening sh tag with guard, if any
function! sh#Open()
  call Template#sh#LoadTemplate()
  return ""
endfunction

" vim: fdm=marker:sw=2:sts=2:et
