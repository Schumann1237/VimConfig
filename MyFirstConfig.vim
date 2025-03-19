set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
syntax enable
filetype plugin indent on


call plug#begin('~/vimfiles/plugged')
" Plug 'artur-shaik/vim-javacomplete2' 
" Plug 'vim-syntastic/syntastic'
" Plug 'valloric/youcompleteme'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
call plug#end()

colorscheme gruvbox
set termguicolors

let &t_SI = "\e[2 q"    " Vertical bar in insert mode
let &t_EI = "\e[2 q"    " Block cursor in normal mode

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = 'â–¸'
let g:NERDTreeDirArrowCollapsible = 'â–¾'

let g:NERDTreeIgnore = ['\(^NTUSER.DAT$\)', '\(^ntuser.dat.LOG[0-9]$\)']

inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>

" Use <Tab> for completion and <S-Tab> for previous completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use C-c to cancel
inoremap <C-c> <Esc>
