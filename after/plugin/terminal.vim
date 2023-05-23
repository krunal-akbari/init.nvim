function! s:small_terminal() abort
  vnew
  wincmd L
  set winfixheight
  term
endfunction

" ANKI: Make a small terminal at the bottom of the screen.
nnoremap <leader>st :call <SID>small_terminal()<CR>

" TODO: Make a floating terminal for one shot command?
