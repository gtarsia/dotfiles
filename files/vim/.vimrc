" Plugins
call plug#begin('~/.vim/plugged')
Plug 'OrangeT/vim-csharp'
" Plug 'chase/vim-ansible-yaml'
Plug 'calviken/vim-gdscript3'
" Plug 'chrisbra/NrrwRgn'
" Plug 'davidpdrsn/vim-spectacular'
" Plug 'digitaltoad/vim-pug'
" Plug 'dylanaraps/wal.vim'
" Plug 'elixir-editors/vim-elixir'
" Plug 'hsanson/vim-android'
" Plug 'jceb/vim-orgmode'
" Plug 'kchmck/vim-coffee-script'
" Plug 'mtscout6/vim-cjsx', {'for': 'coffee'}
Plug 'chr4/nginx.vim'
Plug '/usr/local/opt/fzf'
" Plug 'glacambre/firenvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dracula/vim'
Plug 'elixir-editors/vim-elixir'
Plug 'evanleck/vim-svelte'
Plug 'EvanDotPro/nerdtree-symlink'
Plug 'godlygeek/tabular'
Plug 'heavenshell/vim-jsdoc'
Plug 'igankevich/mesonic'
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-arpeggio'
Plug 'kana/vim-textobj-user'
Plug 'lambdalisue/suda.vim'
Plug 'leafgarland/typescript-vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
" Plug 'pearofducks/ansible-vim'
Plug 'plasticboy/vim-markdown'
Plug 'posva/vim-vue'
Plug 'rcarraretto/vim-surround', { 'branch': 'test' }
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-scriptease'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/headerguard'
Plug 'tikhomirov/vim-glsl'
Plug 'vim-scripts/openvpn'
Plug 'vim-ruby/vim-ruby'
Plug 'wavded/vim-stylus'
Plug 'whatyouhide/vim-textobj-erb'
Plug 'ziglang/zig.vim'
call plug#end()

set clipboard=unnamed
" relative number and line endings
set nu relativenumber
if has('nvim')
  set listchars=tab:▸\ ,eol:¬
endif

let NERDTreeChDirMode=2

" leader maps
"" I map it this view so I can see what I'm typing in the showcmd corner 
map <SPACE> <leader>
nnoremap <leader>ag :Ag<cr>
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
autocmd BufRead,BufNewFile *.cs setlocal shiftwidth=4 tabstop=4


" wrap with arrows and newlines
set whichwrap+=<,>,h,l,[,]


" keep undo settings
set undofile
set undodir=$HOME/.vimundo/


" i have no idea what this is
noremap <key> i <Esc>r


" thor binding
au BufRead,BufNewFile *.thor set filetype=ruby
au BufRead,BufNewFile *.html.tt set filetype=eruby
au BufRead,BufNewFile *.coffee.tt set filetype=coffee


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
let g:surround_{char2nr("B")} = "**\r**"
set diffopt+="vertical"


" enable line numbers
let NERDTreeShowLineNumbers=1
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let NERDTreeShowHidden=1


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
" command! AgC call fzf#vim#ag_raw('--ignore yarn.lock')

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


" easier terminal exit
tnoremap <C-t> <C-\><C-n>


" auto save folds
" augroup AutoSaveFolds
"   autocmd!
"   autocmd BufWinLeave *.txt mkview
"   autocmd BufWinEnter *.txt silent loadview
" augroup END

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

" skeletons
function! VueTemplate()
  if (line('$') == 1 && getline(1) == '')
    execute '0r ~/.vim/templates/vue-template.vue'
    normal Gddgg
  end
endfunction
function! AvaTestTemplate()
  if (line('$') == 1 && getline(1) == '')
    execute '0r ~/.vim/templates/ava-template.test.js'
    normal Gddggjjf'
  end
endfunction

if has("autocmd")
  augroup templates
    autocmd BufNewFile,BufReadPost *.vue call VueTemplate()
    autocmd BufNewFile,BufReadPost *.test.js call AvaTestTemplate()
    autocmd BufNewFile,BufReadPost *.{h,hpp} call HeaderguardAdd()
  augroup END
endif


" nerdtree
map <C-n> :NERDTreeToggle<CR>


" dracula
let g:dracula_colorterm = 0
color dracula


" some adhoc script I wrote for extracting something
function! ExtractScript() range
  let listing = getline(a:firstline)
  let matches = matchlist(listing, 'Listing \(\w\+\).\(\w\+\)')
  let chapter = matches[1]
  let listingNumber = matches[2]
  let subchapter = matchstr(fnamemodify(expand('%'), ':h'), '\(\d\+.\d\+\)$')
  let codePath = expand('%:p:h') . '/code/' . chapter . '.' . listingNumber . '.ruby'
  call writefile(getline(a:firstline+1, a:lastline), codePath)
  normal gvdk
  call append('.', ['', listing, '', '<<< @/docs/redacted/poodr/'.chapter.'/'.subchapter.'/code/'.chapter.'.'.listingNumber.'.ruby', ''])
endfunction
vnoremap <leader>es :call ExtractScript()<cr>


" some other stuff I don't use anymore
function! Snooze()
  let amount = input('Move how many lines down: ')
  normal! dd
  execute "normal! " . amount . "j"
  normal! P
endfunction
nnoremap <leader>sn :call Snooze()<cr>
