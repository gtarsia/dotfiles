# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
source ~/.zshenv
export ZSH=/usr/share/oh-my-zsh
export FZF_DEFAULT_OPTS="--history=$HOME/.fzf_history"
export WINEARCH=win32


# Add rbenv 
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/gitGdotfiles/bin:$PATH"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

setopt HIST_IGNORE_ALL_DUPS

plugins=(
  archlinux
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

# archlinux
   alias yas='yaourt -S'
  alias yasn='yaourt -S --noconfirm'

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

unalias dcup
  alias dcu='docker-compose up'
  alias dcub='docker-compose up --build'
unalias dcdn
  alias dcd='docker-compose down'

# rails
unalias rake
  alias ba='bundle add'
unalias rails
alias rdcm='rake db:drop db:create db:migrate'
alias rdcms='rake db:drop db:create db:migrate db:seed'
alias rdrs='rake db:reset db:seed'
 alias rdr='rake db:reset'
alias rgsc='rails generate scaffold_controller'
 alias rgh='rails generate --help'
 alias rrs='rails restart'
unalias rt
  alias rt='rails test'

# misc
alias hotdog='open https://appear.in/superfluous-hotdog'
alias k9='kill -9'

# unalias annoying zsh grep
unalias grep
alias ggrep='\grep  --color=auto --exclude-dir=.bzr --exclude-dir=CVS --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn'

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
alias tm='tmuxinator'
alias tmn='tmuxinator n'
alias tms='tmuxinator s'
alias tmg='tmuxinator s git'
alias tme='tmuxinator e'
alias tmf='tmuxinator s fs'
alias tmm='tmuxinator s me'

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
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.yarn/bin:$PATH"
eval "$(nodenv init -)"

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
