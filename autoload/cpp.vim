" autoload/cpp.vim - cpp helpers

" Get the opening cpp tag with guard, if any
function! cpp#Open()
  let out = ""
  call Template#cpp#LoadTemplate()
  return out
endfunction

function! cpp#OpenCansiHeader()
  let filename = expand("%:t")
  return system("echo ".filename."|sed.g_header-cansi-1").
        \ "/* -*- vim: set ts=4 sw=4 tw=78 ft=header: -*- */"
endfunction

function! cpp#OpenCansiSource()
  let out = ""
  call Template#c#LoadTemplate()
  return out
endfunction

function! cpp#OpenCansiMainSource()
  let out = ""
  call Template#c#LoadTemplate()
  return out
endfunction
" vim: fdm=marker:sw=2:sts=2:et
