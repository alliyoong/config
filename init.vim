
call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

call plug#end()




set encoding=utf-8 "set default encoding to utf-8"
set number relativenumber "show relative line number"
syntax enable "enable syntax highlighting"
set noswapfile "no use swap"
set scrolloff=7 "remain cursor 7 lines above or below screen edge"
set backspace=indent,eol,start "use backspace to delete indent, eol, start"
set tabstop=4 "how many space to display a tab"
set softtabstop=4 ""
set shiftwidth=4 "how many space for every level of indentation"
set expandtab "convert tab to space"
set autoindent "preserve indentation"
set smartindent "smart indentastion for launguages"
set fileformat=unix "keep file format for unix"
set mouse=a "enable mouse support"
set hidden "navigate to another buffer without saving current buffer"
set fdm=indent "set fold method to indent"
set foldlevelstart=99 "fold level when open a file (make all folds open)"
set ignorecase "case insensitive search by default"
set smartcase "case sensitive search when using uppercase characters"
set colorcolumn=80 "display column margin (80 chars)"
set hlsearch "highlight all search patterns"
set signcolumn=yes "add a column for signs (e.g. LSP,...)"

" Keybindings
" map leader key
let mapleader=' '
let maplocalleader='\\'
" open config file in a new tab
nnoremap <leader>ev :tabedit $MYVIMRC<CR> "open config file in a new tab"
" reload config file
nnoremap <leader>sv :source $MYVIMRC<CR> "reload config file"
" clear search highlight
nnoremap <silent> <leader>a :<C-u>nohlsearch<CR><C-l>

" navigate between buffers
nmap <leader>1 :bp<CR>
nmap <leader>2 :bp<CR>

" show all buffers and let user choose one
nnoremap <leader>i :ls<CR>:b<Space>

" delete current buffer
nnoremap <leader>dd :bd<CR>

" close current window
nnoremap <leader>c :q<CR>

" write current buffer
nnoremap <leader>w :write<CR>

"switch between two buffer
nnoremap <leader><tab> <C-^>

" add current line to X clipboard
nnoremap <leader>yy :normal "+yy<CR>

" add current selected text to X clipboard
xnoremap <leader>yy :normal gv"+y<CR>

" set color theme
colorscheme molokai
let g:airline_theme='molokai'

if(has("termguicolors"))
    set termguicolors
endif    


 "NERDcommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <leader>t :NERDTreeToggle<CR>

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'

" lsp and autocompletion






