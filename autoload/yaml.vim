" yaml.vim - Yaml
" Maintainer: Mr. Ivan

" Get the opening yaml tag with guard, if any
function! yaml#Open()
  call Template#yaml#LoadTemplate()
  return ""
endfunction

" vim: fdm=marker:sw=4:sts=4:et
