# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /etc/profile.d/google-cloud-cli.sh
PROMPT="%B%F{25}%n%f%b @ %d%F{yellow} $%f "

alias gatech="cd ~/gatech/"
alias sat="cd ~/gatech/sat"
alias run-docker-sat="docker run -v ~/gatech/sat/labs:/home/cs6340/labs -v home_cs5340:/home/cs6340 -it mstephenson6/cs6340-fall21-labs"
