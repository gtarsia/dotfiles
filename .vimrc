" Plugins
" -----------------------
call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'chase/vim-ansible-yaml'
Plug 'dracula/vim'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-arpeggio'
Plug 'kana/vim-textobj-user'
Plug 'matze/vim-move'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-rails'
Plug 'OrangeT/vim-csharp'
Plug 'rcarraretto/vim-surround', { 'branch': 'test' }
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-ragtag'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'whatyouhide/vim-textobj-erb'
Plug 'vim-ruby/vim-ruby'
call plug#end()

set nu relativenumber
if has('nvim')
  set listchars=tab:▸\ ,eol:¬
endif

" leader maps
"" I map it this view so I can see what I'm typing in the showcmd corner 
map <SPACE> <leader>
nnoremap <leader>fs :w<cr>
nnoremap <leader>so :so $MYVIMRC<cr>
nnoremap <leader>fi :Files<cr>
nnoremap <leader>qq :q<cr>
nnoremap <leader>qa :qa<cr>
nnoremap <leader>qf :q!<cr>
nnoremap <leader>ss /
nnoremap <leader>c :
nmap <leader>sa :Ag<cr>

call arpeggio#map('iv', '', 0, 'jk', '<Esc>')
" I used Ctrl-c here because for some reason, using escape didn't work
call arpeggio#map('c', '', 0, 'jk', '<C-c>')
call arpeggio#map('nic', '', 0, 'df', '<cr>')
call arpeggio#map('ic', '', 0, 'ui', '<Bs>')


if has('nvim')
  call arpeggio#map('t', '', 0, 'jk', '<Esc>')
  call arpeggio#map('t', '', 0, 'df', '<cr>')
  call arpeggio#map('t', '', 0, 'ui', '<Bs>')
endif


" search settings
set incsearch
set hlsearch
set ignorecase
set smartcase

" clear searches on double enter, annoying
nnoremap <CR> :noh<CR><CR>

" my tab settings
set expandtab
set tabstop=2
set shiftwidth=2

" keep undo settings
set undofile
set undodir=/Users/romigui/.vimundo/

" i have no idea what this is
noremap <key> i <Esc>r

" thor binding
au BufRead,BufNewFile *.thor set filetype=ruby

" add python bindings
let g:python2_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" clipboard for os x
set clipboard+=unnamedplus


"let b:surround_{char2nr('E')} = "<%=\r%>"
"let g:surround_45 = "<% \r %>"
"let g:surround_61 = "<%= \r %>"
"let b:surround_{char2nr('i')} = "*\r*"

map <C-n> :NERDTreeToggle<CR>
" enable line numbers
let NERDTreeShowLineNumbers=1
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let b:surround_{char2nr('b')} = '**\r**'
let NERDTreeShowHidden=1
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

" fzf
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" move modifier to control
let g:move_key_modifier = 'C'
syntax on

color dracula
