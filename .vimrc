set nu
if has('nvim')
  set listchars=tab:▸\ ,eol:¬
endif
nnoremap <CR> :noh<CR><CR>
set expandtab
set tabstop=2
set shiftwidth=2

let g:python2_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:move_key_modifier = 'C'
set clipboard+=unnamedplus
map <C-n> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-rails'
Plug 'OmniSharp/omnisharp-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'matze/vim-move'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-eunuch'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
call plug#end()
