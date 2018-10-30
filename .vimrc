" -----------------------
" Plugins
call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'OrangeT/vim-csharp'
Plug 'chase/vim-ansible-yaml'
Plug 'christoomey/vim-tmux-navigator'
Plug 'davidpdrsn/vim-spectacular'
Plug 'dracula/vim'
Plug 'EvanDotPro/nerdtree-symlink'
Plug 'godlygeek/tabular'
Plug 'hsanson/vim-android'
Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'kana/vim-arpeggio'
Plug 'kana/vim-textobj-user'
Plug 'mtscout6/vim-cjsx', {'for': 'coffee'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'rcarraretto/vim-surround', { 'branch': 'test' }
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-scriptease'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/openvpn'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/openvpn'
Plug 'whatyouhide/vim-textobj-erb'
call plug#end()

set nu relativenumber
if has('nvim')
  set listchars=tab:▸\ ,eol:¬
endif

" leader maps
"" I map it this view so I can see what I'm typing in the showcmd corner 
map <SPACE> <leader>
nnoremap <leader>ag :Ag<cr>
nnoremap <leader>c :
nnoremap <leader>gs :Gstatus<cr>
vnoremap <leader>gr :Gread<cr>
vnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ffs :w !sudo tee %<cr>
nnoremap <leader>fi :Files<cr>
nnoremap <leader>fs :w<cr>
nnoremap <leader>hi :History<cr>
nnoremap <leader>op :exec 'silent !open -a "Google Chrome" % &'<cr>
nnoremap <leader>qa :qa<cr>
nnoremap <leader>qf :q!<cr>
nnoremap <leader>qq :q<cr>
nnoremap <leader>sp :PlugInstall!<cr>
nnoremap <leader>so :so $MYVIMRC<cr>
nnoremap <leader>ss /
nnoremap <leader>t :write\|:call spectacular#run_tests()<cr>
nnoremap <leader>ww <C-w>w
noremap <leader>c :
noremap <leader>ffs :w !sudo tee %<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap <leader>sa :Ag<cr>

call arpeggio#map('iv', '', 0, 'jk', '<Esc>')
" I used Ctrl-c here because for some reason, using escape didn't work
call arpeggio#map('c', '', 0, 'jk', '<C-c>')
call arpeggio#map('nic', '', 0, 'df', '<cr>')
call arpeggio#map('ic', '', 0, 'ui', '<Bs>')

nnoremap du :diffupdate<cr>

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
autocmd FileType java setlocal shiftwidth=2 tabstop=2

" wrap with arrows and newlines
set whichwrap+=<,>,h,l,[,]

" keep undo settings
set undofile
set undodir=/home/romigui/.vimundo/

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
let g:surround_116 = "params: { \r }"
set diffopt+="vertical"

map <C-n> :NERDTreeToggle<CR>
" enable line numbers
let NERDTreeShowLineNumbers=1
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let b:surround_{char2nr('b')} = '**\r**'
let NERDTreeShowHidden=1
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

" fzf
set rtp+=~/.fzf
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

" move modifier to control
let g:move_key_modifier = 'C'

" spectacular
call spectacular#add_test_runner('ruby', 'rails test', '_test.rb')
let g:spectacular_use_terminal_emulator = 0

syntax on
syntax enable
filetype plugin indent on
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:dracula_colorterm = 0
color dracula
