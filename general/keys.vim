" CONFIG-KEY

" Utilice F5 para actualizar su editor con el archivo de configuración que especifique aquí
nmap <%> :source ~/.config/nvim/init.vim <CR>
vmap <%> :source ~/.config/nvim/init.vim <CR>

" Inhabilita las teclas de flecha para navegar. Esto es muy útil cuando quieres
" ADAPTARTE A'hjkl'!!!!
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Alternativa para guardar
nnoremap <leader> w :w <CR>
inoremap <C-s> :w <CR>

" Alternativa para wardar y salir
nnoremap <C-q> :wq <CR>


" Acomodar a gusto un buffer en vertical
nnoremap <silent> <M-h> :vertical resize +5<CR>
nnoremap <silent> <M-j> :vertical resize -5<CR>

" Acomodar a gusto un buffer en horizontal
nnoremap <silent> <M-l> :resize +5<CR>
nnoremap <silent> <M-h> :resize -5<CR>

" Abrir la configuracion de nuestro nvim
nnoremap <leader>e :e $MYVIMRC<CR>

" Abrir terminal de nvim con una talla de 15
vnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 15<CR>

" Moverse al buffer siguiente con <leader> + h
nnoremap <leader>h :bprevious<CR>

" Moverse al buffer anterior con <leader> + l
nnoremap <leader>l :bnext<CR>

" Cerrar el buffer actual con <leader> + q
nnoremap <leader>q :bdelete<CR>

" Crear una nueva ventana
nnoremap <leader>t :tabe<CR>

" Hacer un split vertical
nnoremap <leader>vs :vsp<CR>

" Hacer un split horisontal
nnoremap <leader>sp :sp<CR>

" Borrar resultados de búsqueda
nnoremap <silent>// :noh<CR>
