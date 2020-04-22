function! autobuildvim#path#setting() abort
  return get(g:, 'autobuildvim_vim_path', '$HOME')
endfunction
