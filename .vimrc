syntax on 

set nu
set ruler " Show cursor current position
set laststatus=2 " Para el plugin de la barra de abajo
set noshowmode " Lo mismo
set ignorecase " Ignore cases when searching
set smartcase " 
set hlsearch " Highlight search results
set showmatch " Show matching brackets when text indicator is over them
set noerrorbells " Quita la mierda de los avisos
set novisualbell
set t_vb=
set tm=500
set expandtab " En vez de tabs espacios
set smarttab
set shiftwidth=4
set tabstop=4
set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines cuando se salen de la pantalla


call plug#begin('~/.vim/plugged')
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug 'preservim/nerdtree'
   Plug 'itchyny/lightline.vim'
   Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark

" NERDTree
nnoremap <C-f> :NERDTreeFind<CR> " Abrir NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
"Moverse entre splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
