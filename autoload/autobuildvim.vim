function! autobuildvim#build() abort
  if !has('nvim')
    execute('cd ' . autobuildvim#path#setting() . 'vim/src')
    call autobuildvim#configure#load()
    call system("sudo make")
    call system("sudo make install")
  endif
endfunction

function s:update_vim(vim_path)
  call system(printf('git clone https://github.com/vim/vim %s', a:vim_path))
endfunction
