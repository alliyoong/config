
" Keybindings
" map leader key
let mapleader='\'
let maplocalleader='\\'
" open config file in a new tab
nnoremap <leader>ev :tabedit $MYVIMRC<CR> "open config file in a new tab"
" reload config file
nnoremap <leader>sv :source $MYVIMRC<CR> "reload config file"
" clear search highlight
nnoremap <silent> <leader>a :<C-u>nohlsearch<CR><C-l>

" navigate between buffers
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>

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

" move between splits
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-l> :wincmd l<CR>

" map tab to indent
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
