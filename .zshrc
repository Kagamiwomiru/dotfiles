# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
autoload -Uz colors
colors
PROMPT="%n%F{green}@%m%f:%~/%# "
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/kagamiwomiru/.zshrc'
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
autoload -Uz compinit
compinit
source ~/.zplug/init.zsh
#Plagins

## Vanilla shell
zplug "yous/vanilli.sh"

# Additional completion definitions for Zsh
zplug "zsh-users/zsh-completions"

# excuting compinit command and sourcing other plugins.
zplug "zsh-users/zsh-syntax-highlighting"
# A next-generation cd command with an interactive filter
zplug "b4b4r07/enhancd", use:init.sh


# End of lines added by compinstall

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
export DOCKER_HOST=tcp://l503-08.is.oit.ac.jp:2375
