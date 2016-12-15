" Less delays
set timeoutlen=300
set ttimeout
set ttimeoutlen=100

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set shiftround

" Make some context visible while moving around
set scrolloff=5
set sidescroll=1
set sidescrolloff=10

" Be smart when searching
set ignorecase
set smartcase
set magic

" Hide buffers instead of asking if to save them.
set hidden

" Open new split panes to right and bottom
set splitright
set splitbelow

" Prevents inserting two spaces after punctuation on a join (J)
set nojoinspaces

" Set terminal title
set title

" Show line numbers on the sidebar.
set number

" No intro message
set shortmess+=I

" Ignore modelines (google "vim modeline vulnerability")
set nomodeline

" Avoid problems with fish shell
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" Map the `<Leader>` key to `<Space>`
let mapleader = " "

" Get back to normal mode with `jk`
inoremap jk <Esc>

" Input command with ease
noremap ; :

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
inoremap <C-V> <C-R>+

" Use <C-B> for visual block mode (what <C-V> used to do)
noremap <C-B> <C-V>

" Use <C-L> to clear highlighting
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" Unload current buffer
nnoremap <Leader>c :bdelete<CR>

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
