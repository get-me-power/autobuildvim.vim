function! autobuildvim#configure#load() abort
  echo system("./configure " . autobuildvim#configure#parser())
endfunction

function! autobuildvim#configure#parser() abort
  let l:configure_setting = get(g:, 'autobuildvim_configure_setting', '')
  if len(l:configure_setting) != 0
    return join(l:configure_setting, " ")
  else
    return l:configure_setting
  endif
endfunction
