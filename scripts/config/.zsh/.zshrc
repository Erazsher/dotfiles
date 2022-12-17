# zsh config
# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

#------------------------------
# History stuff
#------------------------------
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000


#------------------------------
# Variables
#------------------------------
export BROWSER="firefox"
export EDITOR="nvim"
export TERMINAL="st"

#----------------------------- Exports
export EDITOR="nvim"
export TERMINAL="st"

autoload -Uz compinit promptinit
compinit
promptinit
_comp_options+=(globdots)	#dotfiles
#-----------------------------
# Dircolors
#-----------------------------
LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';
export LS_COLORS



# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sanal/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Load aliases and shortcuts if existent.
[ -f "$HOME/.zsh/aliasrc" ] && source "$HOME/.zsh/aliasrc"









































