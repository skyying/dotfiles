

set nocompatible

"================ configure Vundle ====================
filetype on " without this vim emits a zero exit status, later, because of :ft off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif
call vundle#end()


"================ General Config ====================
colorscheme ron 
syntax enable  "enable syntax highlighting
set t_Co=256
set encoding=utf-8
set noswapfile
set autoread
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set numberwidth=4
set relativenumber
set scrolloff=5                                              " show context above/below cursorline
set mouse=a
set directory-=.                                             " don't store swapfiles in the current directory
set ignorecase                                               " case-insensitive search
set smartcase                                                " case-sensitive search if any caps
set incsearch                                                " search as you type
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set showcmd
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc "search ignore
set shortmess=a
set cmdheight=2
set regexpengine=1


"================ Indention ====================
filetype plugin indent on
set autoindent
set linebreak    "Wrap lines at convenient points
set expandtab                                                " expand tabs to spaces
set softtabstop=4                                            " insert mode tab and backspace use n spaces
set tabstop=4                                                " actual tabs occupy n 
set shiftwidth=4                                             " normal mode indentation commands use n spaces
set backspace=2                                              " Fix broken backspace in some setups
setl tw=80



"================ mapping ====================
map <space> <leader>

"Remap <ESC>
inoremap jk <ESC>

"Formatting, editing
noremap <C-f> maggvG=jj`a
nnoremap <leader>p viwp 

"quit/save/reload files
nnoremap zz :q<CR>
noremap <leader><space> :w<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"Scrolling"
noremap <C-e> 3<C-e>
noremap <C-y> 3<C-y>

"Productivity
inoremap <BS> <nop>

"Move cursor by display line while wrapping
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"Turn off hilight search result
"noremap <leader>h :set hlsearch! hlsearch?<CR>

"Search / browse files
nnoremap gr :grep <cword> *<CR>
nnoremap Gr :grep <cword> %:p:h/*<CR>
nnoremap gR :grep '\b<cword>\b' *<CR>
nnoremap GR :grep '\b<cword>\b' %:p:h/*<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>] :TagbarToggle<CR>
nnoremap <leader>g :GitGutterToggle<CR>



"================ Plugin Settings ====================
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 0
let g:hardtime_timeout = 2000
let g:hardtime_default_on = 1
let g:hardtime_allow_different_key = 1
let g:user_emmet_install_global = 1
let g:user_emmet_leader_key = ','
let g:user_emmet_expandabbr_key='<tab>'

"Snippets
let g:UltiSnipsSnippetDirectories = ['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"

" Java syntastic check
let g:syntastic_java_checkers = []

" Airline Theme 
let g:airline_theme='wombat'

" YouCompeleteMe menu style
hi Pmenu ctermfg=0 ctermbg=255 cterm=NONE guifg=NONE guibg=#eeeeee gui=NONE
hi PmenuSel ctermfg=0 ctermbg=120 cterm=NONE guifg=NONE guibg=#87ff87 gui=NONE


"================ Change cursor shape in different mode ====================
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


"================ Javascript ====================
autocmd FileType javascript noremap <leader>ic ywOconsole.log('<esc>pi',<esc>pi);<esc>
