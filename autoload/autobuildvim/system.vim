function! autobuildvim#system#sudo(cmd) abort
  execute('cd ' . autobuildvim#path#setting() . '/vim/src')
  try
    call inputsave()
    redraw | let password = inputsecret(g:autobuildvim#system#prompt)
  finally
    call inputrestore()
  endtry
  let cmd = printf('sudo -p '''' -S %s', a:cmd)
  if get(g:, 'autobuildvim#need_sudo', 0) == 1
    return term_start(['sudo', a:cmd])
  else
    return term_start([a:cmd])
  endif
  endfunction

let g:autobuildvim#system#prompt = get(g:, 'autobuildvim#system#prompt', 'Password: ')
