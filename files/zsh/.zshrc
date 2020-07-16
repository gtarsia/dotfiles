# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source ~/.zshenv
# source $HOME/.cargo/env

unsetopt nomatch
precmd() { print "\n" }

export FZF_DEFAULT_OPTS="--history=$HOME/.fzf_history"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/git/codini:$PATH"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
setopt HIST_IGNORE_ALL_DUPS
#
# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR=nvim
# Compilation flags
export ARCHFLAGS="-arch x86_64"
export ERL_AFLAGS="-kernel shell_history enabled"

export CODINI_DIR="$HOME/git/my-codini"

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
# DISABLE_AUTO_TITLE="true"

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
  cargo
  docker-compose
  git
  globalias
  rails
  tmux
  zsh_reload
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
  alias bd='buffalo dev'
  alias bg='buffalo generate'
  alias bp='buffalo pop'
 alias bpm='buffalo pop migrate'

 alias cl='ceedling'

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
   alias gs='git status -sb'
  alias gdc='git diff --cached'
unalias gr
   alias gr='git reset --'
unalias grh
  alias grh='git reset --hard'
  alias grs='git reset --soft'
  alias gph='git push heroku'
  alias gpo='git push origin'
  alias gpg='git push guido'

# docker-compose
  alias cb='cargo build'
  alias cr='cargo run'

unalias dcup
  alias dcu='docker-compose up'
  alias dcub='docker-compose up --build'
unalias dcdn
  alias dcd='docker-compose down'

  alias mk='make'

# rails
unalias rake
  alias ba='bundle add'
unalias rails
alias rc='rails console'
alias rce='rails credentials:edit'
alias rcs='rails credentials:show'
alias rdcm='rake db:drop db:create db:migrate'
alias rdcms='rake db:drop db:create db:migrate db:seed'
alias rdrs='rake db:reset db:seed'
 alias rdr='rake db:reset'
  alias rg='rails generate'
 alias rgs='rails generate scaffold'
alias rgsc='rails generate scaffold_controller'
 alias rgh='rails generate --help'
 alias rrs='rails restart'
unalias rt
  alias rt='rails test'

  alias zr='zig run'

# misc
alias hotdog='open https://appear.in/superfluous-hotdog'
alias k9='sudo kill -9'

# unalias annoying zsh grep
unalias grep
alias ggrep='\grep  --color=auto --exclude-dir=.bzr --exclude-dir=CVS --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn'
alias pg='ps -ax | grep'

# User configuration
#
zstyle ':notify:*' command-complete-timeout 1
zstyle ':notify:*' success-title "Command finished"

# export MANPATH="/usr/local/man:$MANPATH"
alias gw='npm run gulp-watch'
alias dw='npm run gulp-dotwatch'

alias lg='light'
alias lgs='light -S'
alias nexp='node --experimental-repl-await'

# tmuxinator
alias rs='runresurrect & ; _zsh_tmux_plugin_run'
alias tm='tmuxinator'
alias tmd='tmuxinator s dotfiles'
alias tmn='tmuxinator n'
alias tms='tmuxinator s'
alias tmg='tmuxinator s git'
alias tme='tmuxinator e'
alias tmf='tmuxinator s fs'
alias tmm='tmuxinator s me'

alias ↑↑↓↓←←→→BA='echo "Secret powers unlocked!"'

alias yb='yarn build'
alias yf='yarn fix'
alias ys='yarn serve'
alias yt='yarn test:watch'
alias ye='yarn esw'


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
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
export PATH="$HOME/.yarn/bin:$PATH"

function github() {
  arr=("${(@s./.)1}")
  repo=$HOME/git/${arr[2]}
  git clone git@github.com:$1 $repo
  tmuxinator s git ${arr[2]}
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

