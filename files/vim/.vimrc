" Plugins
" p

" keep undo settings
set undofile
set undodir=$HOME/.vimundo/

call plug#begin('~/.vim/plugged')
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'dracula/vim'
  Plug 'junegunn/fzf.vim'
  Plug '/usr/local/opt/fzf'
  Plug 'kana/vim-arpeggio'
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'rcarraretto/vim-surround', { 'branch': 'test' }
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-commentary'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'lifepillar/pgsql.vim'
  " Plug 'prettier/vim-prettier'
  " Plug 'vim-autoformat/vim-autoformat'
  " Plug 'leafOfTree/vim-vue-plugin'
  Plug 'ntpeters/vim-better-whitespace'
" Plug 'OrangeT/vim-csharp'
" Plug 'bluz71/vim-nightfly-guicolors'
" " Plug 'chase/vim-ansible-yaml'
" " Plug 'calviken/vim-gdscript3'
" " Plug 'chrisbra/NrrwRgn'
" " Plug 'davidpdrsn/vim-spectacular'
" " Plug 'digitaltoad/vim-pug'
" " Plug 'dylanaraps/wal.vim'
" " Plug 'elixir-editors/vim-elixir'
" " Plug 'hsanson/vim-android'
" " Plug 'jceb/vim-orgmode'
" " Plug 'kchmck/vim-coffee-script'
" " Plug 'mtscout6/vim-cjsx', {'for': 'coffee'}
" Plug 'chr4/nginx.vim'
" Plug 'dylanaraps/wal.vim'
" " Plug 'glacambre/firenvim'
" " Plug 'morhetz/gruvbox'
" " Plug 'elixir-editors/vim-elixir'
" Plug 'evanleck/vim-svelte'
" Plug 'EvanDotPro/nerdtree-symlink'
Plug 'godlygeek/tabular'
" Plug 'heavenshell/vim-jsdoc'
" " Plug 'igankevich/mesonic'
" Plug 'kana/vim-textobj-user'
Plug 'lambdalisue/suda.vim'

" " Plug 'peitalin/vim-jsx-typescript'

" " Plug 'leafgarland/typescript-vim'
" Plug 'michaeljsmith/vim-indent-object'
" " Plug 'mxw/vim-jsx'
" " Plug 'pangloss/vim-javascript'
" " Plug 'pearofducks/ansible-vim'
" Plug 'rust-lang/rust.vim'
" " Plug 'tasn/vim-tsx'
" Plug 'tpope/vim-markdown'
" Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-ragtag'
" Plug 'tpope/vim-rails'
" Plug 'tpope/vim-scriptease'
" " Plug 'vim-airline/vim-airline'
" " Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-scripts/headerguard'
" " Plug 'tikhomirov/vim-glsl'
" Plug 'vim-scripts/openvpn'
" Plug 'vim-ruby/vim-ruby'
" " Plug 'wavded/vim-stylus'
" Plug 'whatyouhide/vim-textobj-erb'
" Plug 'ziglang/zig.vim'
call plug#end()

lua require('plugins')

set laststatus=2
set noshowmode

" set clipboard=unnamed
" relative number and line endings
set nu relativenumber
if has('nvim')
  set listchars=tab:▸\ ,eol:¬
endif

let NERDTreeChDirMode=2
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
" let NERDTreeMapToggleFilters=1
let NERDTreeIgnore = [
  \'^__pycache__$', 'egg-info$', '^.pytest_cache$',
  \'^.git$', '.husky', '.vscode',
  \'node_modules', 'dist', '.nuxt',
  \'^coverage$',
  \'yarn-error.log',
\]
let NERDTreeMapToggleHidden=""
let NERDTreeMapToggleFilters="I"
autocmd VimEnter * if !argc() | NERDTree | endif

" leader maps
"" I map it this view so I can see what I'm typing in the showcmd corner 
map <SPACE> <leader>
nnoremap <leader>ag :Rg<cr>
nnoremap <leader>c :
noremap <leader>c :
nnoremap <leader>ff :!npx eslint --fix %<cr>
nnoremap <leader>fi :Files<cr>
nnoremap <leader>fs :w<cr>
nnoremap <leader>fas :w suda://%<cr>
nnoremap <leader>gf :!codini wf 
nnoremap <leader>go :read !codini wo 
nnoremap <leader>hi :History<cr>
nnoremap <leader>nf :NERDTreeFind<CR>
nmap <leader>nn jVai:NR!<cr>
nmap <leader>ns :WidenRegion<CR><C-O>
nnoremap <leader>op :exec 'silent !open -a "Google Chrome" % &'<cr>
vnoremap <leader>p "_dP
nnoremap <leader>qa :qa<cr>
nnoremap <leader>qf :q!<cr>
nnoremap <leader>qq :q<cr>
nnoremap <leader>r :!
nnoremap <leader>sp :PlugInstall!<cr>
nnoremap <leader>so :so $MYVIMRC<cr>
nnoremap <leader>ss /
nnoremap <leader>tt V:Strikethrough<cr>
nmap <leader>tc viwS`
nmap <leader>tb viwS*gvS*
nnoremap <leader>ww <C-w>w
nnoremap <leader>wq :wq<cr>
noremap <leader>ffs :w !sudo tee %<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" search
vnoremap // y/<C-R>"<CR>


" arpeggios
call arpeggio#map('iv', '', 0, 'jk', '<Esc>')
" I used Ctrl-c here because for some reason, using escape didn't work
call arpeggio#map('c', '', 0, 'jk', '<C-c>')
if has('nvim')
  call arpeggio#map('t', '', 0, 'jk', '<Esc>')
endif


" git diff
nnoremap du :diffupdate<cr>


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
autocmd BufRead,BufNewFile java setlocal shiftwidth=2 tabstop=2
autocmd BufRead,BufNewFile *.cshtml setlocal shiftwidth=2 tabstop=2
autocmd BufRead,BufNewFile *.tsx setlocal shiftwidth=2 tabstop=2
autocmd BufRead,BufNewFile *.cs setlocal shiftwidth=4 tabstop=4


" wrap with arrows and newlines
set whichwrap+=<,>,h,l,[,]


" i have no idea what this is
noremap <key> i <Esc>r


" thor binding
au BufRead,BufNewFile *.thor set filetype=ruby
au BufRead,BufNewFile *.html.tt set filetype=eruby
au BufRead,BufNewFile *.coffee.tt set filetype=coffee


" add python bindings
" let g:python2_host_prog = '/usr/bin/python'
" let g:python3_host_prog = '/usr/local/bin/python3'


" clipboard for os x
set clipboard+=unnamedplus


"let b:surround_{char2nr('E')} = "<%=\r%>"
"let g:surround_45 = "<% \r %>"
"let g:surround_61 = "<%= \r %>"
"let b:surround_{char2nr('i')} = "*\r*"
let g:surround_116 = "params: { \r }"
let g:surround_{char2nr("B")} = "**\r**"
set diffopt+="vertical"

let $FZF_DEFAULT_COMMAND = 'rg -l --no-ignore --ignore-file .gitignore --ignore-file ~/.ignore -e ""'

" fzf
command! -nargs=* AgQ call fzf#vim#ag(<q-args>, {'down': '40%', 'options': '-q '.shellescape(<q-args>.' ')})
" command! -bang -nargs=* Ag
"   \ call fzf#vim#ag(<q-args>,
"   \                 <bang>0 ? fzf#vim#with_preview('up:60%')
"   \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
"   \                 <bang>0)
let g:fzf_history_dir = '~/.local/share/fzf-history'

function! s:ag_with_opts(arg, bang)
  let tokens  = split(a:arg)
  let ag_opts = '--ignore .git --ignore yarn.lock --hidden'
  let query   = join(filter(copy(tokens), 'v:val !~ "^-"'))
  call fzf#vim#ag(query, ag_opts, a:bang ? {} : {'down': '40%'})
endfunction

command! -nargs=* -bang Ag call s:ag_with_opts(<q-args>, <bang>0)
" command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
" command! AgC call fzf#vim#ag_raw('--ignore yarn.lock')
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg  --no-ignore --ignore-file .gitignore --ignore-file ~/.ignore --column --line-number
  \ --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   {'options': '--delimiter : --nth 4..'}, <bang>0)

" move modifier to control
let g:move_key_modifier = 'C'


" I have no idea what this is either
syntax on
syntax enable
filetype plugin indent on
" if exists('+termguicolors')
"   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"   set termguicolors
" endif


" status hide
let s:hidden_all = 0
function! ToggleHiddenAll()
  if s:hidden_all  == 0
    let s:hidden_all = 1
    set noshowmode
    set noruler
    set laststatus=0
    set noshowcmd
    set nonumber
    set norelativenumber
  else
    let s:hidden_all = 0
    set showmode
    set ruler
    set laststatus=2
    set showcmd
    set number
    set relativenumber
  endif
endfunction
nnoremap <S-h> :call ToggleHiddenAll()<CR>

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" set indent for txt files
" au BufRead,BufNewFile *.txt set fdm=indent
set nofoldenable

" narrow region bindings
set hidden

" to make parcel work
set backupcopy=yes

" yml
augroup filetype_yaml
  autocmd!
  autocmd BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
  autocmd FileType yaml |
  setlocal shiftwidth=2 |
  setlocal softtabstop=2 |
  setlocal tabstop=2
augroup END

if has("autocmd")
  augroup templates
    autocmd BufNewFile,BufReadPost *.vue call VueTemplate()
    autocmd BufNewFile,BufReadPost *.test.js call AvaTestTemplate()
    autocmd BufNewFile,BufReadPost *.test.mjs call AvaTestTemplate()
    autocmd BufNewFile,BufReadPost *.{h,hpp} call HeaderguardAdd()
    autocmd BufNewFile,BufReadPost *_test.rb call RbTestTemplate()
  augroup END
endif


" true color with alacritty/tmux
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" dracula
let g:dracula_colorterm = 0
color dracula

" sql
let g:sql_type_default = 'pgsql' " lifepillar/pgsql.vim
autocmd FileType sql set commentstring=--%s
