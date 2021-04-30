" Escogiendo la teacla mayor
let mapleader = " "

set encoding=utf-8
set mouse=a "Esto habilita la compatibilidad con el mouse
set clipboard=unnamedplus "Para configurar el portapapeles principal en vim, necesitamos xclip o xcel, otro valor no tiene nombre
set noerrorbells "Esto deshabilita las campanas de error porque es muy molesto


" Para configurar las pestañas

set sw=4 "La teacla tab equivale a 4 espacios
set expandtab
set smartindent "Indentacion
set number
set rnu
set numberwidth=1 
set noswapfile
set nobackup
set undodir=~/.config/nvim/.undodir/
set undofile
set incsearch"Establecer búsqueda incremental e ignorar las palabras mayúsculas

" Establece la línea del cursor y una columna
set cursorline
set colorcolumn=80
highlight ColoColumn ctermbg=0 guibg=lightgrey

" Esto establece las direcciones de las divisiones
set splitbelow
set splitright
set autoindent
set smarttab
"set shiftwidth=4
"set showtabline=4
set formatoptions-=cro
set hidden
set fileencoding=utf-8
set ruler
set autochdir
filetype on
filetype indent on
filetype plugin on