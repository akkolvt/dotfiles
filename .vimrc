set lines=65 columns=205
colorscheme cobalt

execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim

"Открывает NERDTree, если не было указано никаких файлов
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Закрывает вим, если осталось только окно с NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

filetype plugin on
"Надо еще настроить отступы
"filetype plugin indent on
"Настройка с типами файлов для commenter
autocmd FileType apache set commentstring=#\ %s

let g:SuperTabDefaultCompletionType = "<c-n>"

map <C-n> :NERDTreeToggle<CR>
map <C-C> :ClearCtrlPCache<CR>

"let delimitMate_autoclose = 0
"let delimitMate_offByDefault = 1

set expandtab
set tabstop=2
set number
set numberwidth=4

noremap <S-l> gt
noremap <S-h> gT
"cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

