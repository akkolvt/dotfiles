set lines=49 columns=205
colorscheme cobalt
map <C-n> :NERDTreeToggle<CR>
"let delimitMate_expand_cr = 0
let delimitMate_autoclose = 0
"set runtimepath^=~/.vim/janus/vim/tools/ctrlp/plugin/ctrlp.vim
set expandtab
set tabstop=2
set number
set numberwidth=4

noremap <S-l> gt
noremap <S-h> gT
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
