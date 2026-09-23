alias vim="nvim"

### Function ghq_peco_cd
ghq_peco_cd() {
	cd "$(ghq list --full-path | peco)"
}
alias gp="ghq_peco_cd"
###

### Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
### End of lines configured by zsh-newuser-install

### The following lines were added by compinstall
zstyle :compinstall filename '/home/webbingon/.zshrc'

autoload -Uz compinit
compinit
### End of lines added by compinstall

### gpg-agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
	export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

### LANG
export LANG="en_US.UTF-8"

### Starship
eval "$(starship init zsh)"

