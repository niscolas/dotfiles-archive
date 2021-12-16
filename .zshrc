## exports
export ZSH="/home/niscolas/.oh-my-zsh"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{.git,node_modules,**/*.meta}/*" 2> /dev/null'
export EDITOR=/bin/nvim
export VISUAL=$EDITOR
export UNITY_EDITOR="/mnt/c/Program Files/UnityEditors/2021.2.0f1"

## oh-my-zsh
ZSH_THEME="purify"
plugins=(git zsh-syntax-highlighting)

## sourcing files
source $ZSH/oh-my-zsh.sh

## settings
bindkey -v

## aliases
alias cat="bat"
alias l="ls -lah"
alias packunityproj="zip -r project.zip Assets/ ProjectSettings/ Packages/" 
alias zshsrc="source ~/.zshrc"
alias cdrr="cd \"$(git rev-parse --show-toplevel)\""
# arch
alias install="sudo pacman -Sy"
alias uninstall="sudo pacman -R"
alias update="sudo pacman -Syu"
# debian
alias uninstall="sudo apt remove"
alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
alias updagrade="sudo apt update && sudo apt upgrade"
# windows
alias clip="clip.exe"

eval $(ssh-agent -s)

pfetch
