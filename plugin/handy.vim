" Map the `<Leader>` key to `<Space>`
let mapleader = " "

" Get back to normal mode with `jk`
inoremap jk <Esc>

" Treat wrapped lines as actual lines
noremap j gj
noremap k gk

" Remap `0` to first non-blank character
noremap 0 ^

" Use `[` and `]` for page up and page down
nnoremap [ <PageUp>
nnoremap ] <PageDown>

" Manipulate indents with <Tab> and <S-Tab>
nnoremap <silent> <Tab> >>^
nnoremap <silent> <S-Tab> <<^
vnoremap <silent> <Tab> >gv^
vnoremap <silent> <S-Tab> <gv^

" Get cut, copy and paste to feel native
vnoremap <C-X> "+x
vnoremap <C-C> "+y
map <C-V> "+gP
cmap <C-V> <C-R>+

" Use <C-B> for visual block mode (what <C-V> used to do)
noremap <C-B> <C-V>

" Write as root with `:w!!`
cmap w!! w !sudo tee % >/dev/null

" Fixes common typos caused by holding `<Shift>` a bit too long
if has("user_commands")
  command! -bang -nargs=? -complete=file E e<bang> <args>
  command! -bang -nargs=? -complete=file W w<bang> <args>
  command! -bang -nargs=? -complete=file Wq wq<bang> <args>
  command! -bang -nargs=? -complete=file WQ wq<bang> <args>
  command! -bang Wa wa<bang>
  command! -bang WA wa<bang>
  command! -bang Q q<bang>
  command! -bang QA qa<bang>
  command! -bang Qa qa<bang>
endif
