nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dx :call vimspector#Launch()<CR>
nnoremap <S-k> :call vimspector#StepOut()<CR>
nnoremap <S-l> :call vimspector#StepInto()<CR>
nnoremap <S-j> :call vimspector#StepOver()<CR>
nnoremap <leader>d_ call vimspector#Restart()<CR>
nnoremap <leader>dn call vimspector#Continue()<CR>
nnoremap <leader>drc call vimspector#RunToCursor()<CR>
nnoremap <leader>dh call vimspector#ToggleBreakpoint()<CR>
nnoremap <leader>de call vimspector#ToggleConditionalBreakpoint()<CR>
nnoremap <leader>dX call vimspector#ClearBreakpoints()<CR>
