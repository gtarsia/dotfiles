# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# [[ $TMUX != "" ]] && export TERM="screen-256color"
# [[ $TMUX = "" ]] && export TERM="xterm-256color"
export ZSH="$HOME/.oh-my-zsh"
source ~/.zshenv
printf "\e]2;$USER@$HOST\a"
# source $HOME/.cargo/env

unsetopt nomatch
precmd() { print "\n" }

export FZF_DEFAULT_OPTS="--history=$HOME/.fzf_history"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.bun/bin:$PATH"

# android
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export ANDROID_HOME=$ANDROID_SDK_ROOT
# export ANDROID_EMULATOR_HOME='/opt/android-sdk/emulator'
# export PATH="${PATH}:${ANDROID_HOME}/platform-tools"
# export PATH="${PATH}:${ANDROID_HOME}/emulator"

# dotnet
# export PATH="$HOME/.dotnet:$PATH"
# export DOTNET_ROOT="$HOME/.dotnet"

export GOPATH="$HOME/go"
# export PATH="$GOPATH/bin:$PATH"
setopt HIST_IGNORE_ALL_DUPS
#
# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR=nvim
# Compilation flags
export ARCHFLAGS="-arch x86_64"
export ERL_AFLAGS="-kernel shell_history enabled"

export MONOPKG="$HOME/git/monorepo/packages"

# (cat $HOME/.config/wpg/sequences &)

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  archlinux
  # buffalo
  docker-compose
  git
  # globalias
  # rails
  tmux
  history-substring-search
  bgnotify
)
source $ZSH/oh-my-zsh.sh


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias mw="sudo bash /home/romigui/dotfiles/mount+wifi"
alias hw="sudo bash /home/romigui/dotfiles/root-bin/wifi /.wifi"
alias pw="sudo bash /home/romigui/dotfiles/root-bin/wifi /.phone-wifi"
alias game="sudo bash /home/romigui/dotfiles/root-bin/game"

# archlinux
   alias yas='yaourt -S'
  alias yasn='yaourt -S --noconfirm'

# buffalo
  alias ba='bun add'
  alias bad='bun add -D'
  alias bb='bun run build'
  alias bd='bun dev'
  alias bi='bun install'

 alias cl='ceedling'

 alias dr='dotnet run'
 alias db='dotnet build'

# My aliases
# git /\(unalias\|alias\) 
  alias ga.='git add .'
unalias gap
  alias gap='git add -p'
  alias gch='git checkout'
  alias gcf='git clean -f'
 alias gcfd='git clean -fd'
  alias gfd='git fetch demand'
  alias gfg='git fetch guido'
  alias gla='git log --graph --decorate --pretty=oneline --abbrev-commit --all $argv'
unalias gst
   alias gs='git -c color.status=always status -sb'
  alias gdc='git diff --cached'
unalias gr
   alias gr='git reset --'
unalias grh
  alias grh='git reset --hard'
  alias grs='git reset --soft'
  alias gph='git push heroku'
  alias gpo='git push origin'
  alias gpgu='git push guido'
function gvr() {
  xdg-open https://$(git remote get-url origin | cut -c 5- | tr : /)
}
  alias gwa='git worktree add'


  # export MANPATH="/usr/local/man:$MANPATH"
  alias cb='cargo build'
  alias cr='cargo run'

  alias dbb='docker run --rm -it $(docker build -q .) /bin/bash'
  alias dbr='docker run --rm $(docker build -q .) #'
  alias dc='docker compose'
unalias dcup
  alias dcu='docker-compose up'
  alias dcub='docker-compose up --build'
unalias dcdn
  alias dcd='docker-compose down'
  alias dp='docker ps'

# meson
  alias mc='meson compile'
  alias mb='meson build'

  alias mk='make'

# node
alias nexp='node --experimental-repl-await'
  alias ni='node --inspect-brk'

# npm
  alias ns='npm start'
  alias nt='npm test'

 alias or='omz reload'

  alias ports='ss -lntp | grep'

# pnpm
alias pa='pnpm add'
alias pad='pnpm add -D'
alias pi='pnpm i'

# rails
# unalias rake
# unalias rails
# alias rc='rails console'
# alias rce='rails credentials:edit'
# alias rcs='rails credentials:show'
# alias rdcm='rake db:drop db:create db:migrate'
# alias rdcms='rake db:drop db:create db:migrate db:seed'
# alias rdrs='rake db:reset db:seed'
#  alias rdr='rake db:reset'
#   # alias rg='rails generate'
#  alias rgs='rails generate scaffold'
# alias rgsc='rails generate scaffold_controller'
#  alias rgh='rails generate --help'
#   alias rs='rails server'
#  alias rrs='rails restart'
# unalias rt
#   alias rt='rails test'
#   alias rtt='rake test TESTOPTS="-n=/slow/"'

# misc
alias hotdog='open https://appear.in/superfluous-hotdog'
alias k9='sudo kill -9'

# unalias annoying zsh grep
unalias grep
alias ggrep='\grep  --color=auto --exclude-dir=.bzr --exclude-dir=CVS --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn'

# User configuration
#
zstyle ':notify:*' command-complete-timeout 1
zstyle ':notify:*' success-title "Command finished"

alias lg='light'
alias lgs='light -S'


alias pg='ps -ax | grep'

alias src='omz reload'
# unalias sd

# tmuxinator
alias tk='tmux kill-server'
alias tmr='runresurrect & ; _zsh_tmux_plugin_run'
alias tm='tmuxinator'
alias tmd='tmuxinator s dotfiles'
alias tmn='tmuxinator n'
alias tmg='tmuxinator s git'
alias tme='tmuxinator e'
alias tmf='tmuxinator s fs'
alias tmm='tmuxinator s me'
alias tms='tmuxinator s single'

alias td='turbo dev'

alias -g ya='yarn add'
alias -g yaa='yarn auth-admin'
alias -g yad='yarn add --dev'
alias -g yb='yarn build'
alias -g ybw='yarn build:watch'
alias -g yc='yarn cli'
alias ycd='yarn cypress:dev'
alias yco='yarn cypress:open'
alias ycr='yarn cypress:run'
alias -g yd='yarn dev'
alias ydc='yarn dev:cached'
alias ydb='yarn debug'
alias yf='yarn fix'
alias yl='yarn lint'
alias ylw='yarn lint:watch'
alias yp='yarn pub'
alias yr='yarn rw'
alias yrd='yarn rw dev'
alias yrg='yarn rw g'
alias ys='yarn serve'
alias ysa='yarn serve-admin'
alias -g yts='yarn ts:watch'
alias yt='yarn test'
alias ytd='yarn test:debug'
alias ytw='yarn test:watch'
alias ye='yarn esw'
alias yx='yarn example'
alias yxd='yarn example:debug'

alias zr='zig run'

alias runresurrect="while ! tmux run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh; do sleep 0.2; done"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="$HOME/.cargo/bin:$PATH"
. $HOME/.asdf/asdf.sh
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit
compinit
# export PATH="$HOME/.rbenv/bin:$PATH"
# export PATH="$HOME/.rbenv/shims:$PATH"
# eval "$(rbenv init -)"
# eval "$(nodenv init -)"

function github() {
  arr=("${(@s./.)1}")
  repo=$HOME/git/${arr[2]}
  git clone git@github.com:$1 $repo
  tmuxinator s git ${arr[2]}
}

function gitlab() {
  arr=("${(@s./.)1}")
  repo=$HOME/git/${arr[2]}
  git clone git@git.thegeck.com:$1 $repo
  tmuxinator s git ${arr[2]}
}

function clone-rm() {
  repo=${2:-.}
  git clone --separate-git-dir=$(mktemp -u) --depth=1 $1 $repo && rm $repo/.git
}

function save_layout() {
  project=$(basename $(pwd))
  templates=$HOME/.config/tmuxinator
  sample=$templates/sample.yml
  template=$templates/$project.yml
  cp $sample $template
  tmux list-windows | grep -Po 'layout\K(.+)(?=] )' | awk '{print "layout: " $1}' >> $template
  tmuxinator e $project
}

function nd() {
  bin=$(yarn global bin)
  echo $@
  node --inspect-brk $bin/$1 ${@:2}
}

# export LESS_TERMCAP_mb=$'\e[01;31m'       # begin blinking
# export LESS_TERMCAP_md=$'\e[01;37m'       # begin bold
# export LESS_TERMCAP_me=$'\e[0m'           # end all mode like so, us, mb, md, mr
# export LESS_TERMCAP_se=$'\e[0m'           # end standout-mode
# export LESS_TERMCAP_so=$'\e[45;93m'       # start standout mode
# export LESS_TERMCAP_ue=$'\e[0m'           # end underline
# export LESS_TERMCAP_us=$'\e[4;93m'        # start underlining
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export MANROFFOPT="-P -c"


# # The next line updates PATH for the Google Cloud SDK.
# if [ -f '/home/romigui/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/home/romigui/gcloud/google-cloud-sdk/path.zsh.inc'; fi
#
# # The next line enables shell command completion for gcloud.
# if [ -f '/home/romigui/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/romigui/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

# bun completions
[ -s "/home/romigui/.bun/_bun" ] && source "/home/romigui/.bun/_bun"


galias() {
   # Get last word to the left of the cursor:
   # (z) splits into words using shell parsing
   # (A) makes it an array even if there's only one element
   # local word=${${(Az)LBUFFER}[-1]}
   # if [[ $GLOBALIAS_FILTER_VALUES[(Ie)$word] -eq 0 ]]; then
      zle _expand_alias
      # zle expand-word
   # fi
   zle self-insert
}
zle -N galias

# space expands all aliases, including global
bindkey -M emacs " " galias
bindkey -M viins " " galias
