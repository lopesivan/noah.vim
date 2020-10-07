" autoload/cpp.vim - cpp helpers

" Get the opening cpp tag with guard, if any
function! go#OpenTemplate()

  let out = ""

  " is cpp source
  if expand("%:e") == "go"
    call Template#go#LoadTemplate()
    return out
  endif

  return "empty"
endfunction

" vim: fdm=marker:sw=2:sts=2:et
