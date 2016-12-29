" https://technotales.wordpress.com/2010/03/31/preserve-a-vim-function-that-keeps-your-state/
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction 

" Strip trailing whitespace
nmap <Leader>$ :call Preserve("%s/\\s\\+$//e")<CR>
" Fix indentation
nmap <Leader>= :call Preserve("normal gg=G")<CR>
