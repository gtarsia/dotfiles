#/usr/bin/zsh
xkbcomp -w 0 /home/romigui/dotfiles/.xkbmap $DISPLAY
syndaemon -i 0.25 -R -t -d
while ! tmux run-shell /home/romigui/.tmux/plugins/tmux-resurrect/scripts/restore.sh; do sleep 0.2; done
