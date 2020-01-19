
" use pathogen https://github.com/tpope/vim-pathogen
execute pathogen#infect()

syntax on
filetype plugin indent on      " required
" for fzf setup
source ~/.fzf/plugin/fzf.vim 
set rtp+=`~\.fzf`

" color scheme and stylec
set t_Co=256
set background=dark
set termguicolors
colorscheme edge
hi Comment ctermfg=235 ctermbg=8

" indent and tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set relativenumber

"nature window split
set splitbelow
set splitright

" navigate with split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set hlsearch
set ruler
set history=5000
set paste
"set clipboard=unnamedplus

" dont have swp file
set noswapfile

" key map
" switch ; and : on normal and visual mode
nnoremap ; :
vnoremap ; :
nnoremap : ;
vnoremap : ;

" Remap esc
inoremap jk <ESC>
inoremap kj <ESC>

" Move to begining of the line
noremap B ^
noremap E $

cnoremap ql q!<CR>
cnoremap jk <esc><esc>

" copy between visual mode
"vmap <c-x> :!pbcopy<CR>  
"vmap <c-c> :w !pbcopy<CR>

" https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
" curosr chagne by mode for iterm 2
let &t_SI = "\<Esc>]50;CursorShape=3\x7"
let &t_EI = "\<Esc>]50;CursorShape=2\x7"

" curosr change for Terminal
let &t_SI = "\<Esc>[3 q"
let &t_EI = "\<Esc>[2 q"


map <Space> <leader>
nnoremap <c-g> :Ack 
vmap <c-g> :Ack 

" fzf mapping
nnoremap <silent> <C-p> :FZF<cr>

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" ack.vim setup
let g:ackprg = 'ag --vimgrep'
let g:ackprg = 'ag --nogroup --nocolor --column'

call glaive#Install()

" https://github.com/google/vim-codefmt 
augroup autoformat_settings
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType python AutoFormatBuffe yapf
augroup END

