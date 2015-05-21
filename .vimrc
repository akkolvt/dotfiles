set lines=65 columns=205
colorscheme cobalt
" colorscheme solarized
" set background=light
" call togglebg#map("<F5>")

set expandtab
set shiftwidth=2
set softtabstop=2
set number
set numberwidth=4
set hlsearch

execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Открывает NERDTree, если не было указано никаких файлов
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Закрывает вим, если осталось только окно с NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

syntax on
filetype on
filetype plugin on
filetype indent on

" Типы файлов для commenter
autocmd FileType apache set commentstring=#\ %s

let g:SuperTabDefaultCompletionType = "<c-n>"
" Подсветка скобок в clojure
let g:rainbow_active = 0

map <C-n> :NERDTreeToggle<CR>
map <C-C> :ClearCtrlPCache<CR>
map <C-b> :RainbowToggle<CR>

" let delimitMate_autoclose = 0
" let delimitMate_offByDefault = 1

noremap <S-l> gt
noremap <S-h> gT
" Удаление лишних пробелов
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
" cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
