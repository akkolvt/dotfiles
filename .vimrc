set lines=65 columns=205
colorscheme cobalt

execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim

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
