scriptencoding utf-8

function! autobuildvim#configure#load() abort
  let l:configure_command = './configure ' . join(autobuildvim#configure#parser(), ' \')
  execute('cd ' . autobuildvim#path#setting() . '/vim/src')
  call term_start(l:configure_command, {
        \ 'term_finish': 'close',
        \ })
endfunction

function! autobuildvim#configure#parser() abort
  let l:configure_setting = get(g:, 'autobuildvim_configure_setting', [])
    return l:configure_setting
endfunction
