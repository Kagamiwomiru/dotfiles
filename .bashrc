#Start tmux on every shell login
#https://wiki.archlinux.org/index.php/Tmux#Start_tmux_on_every_shell_login
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
