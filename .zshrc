## exports
export ZSH="/home/niscolas/.oh-my-zsh"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{.git,node_modules,**/*.meta}/*" 2> /dev/null'
export EDITOR=/bin/nvim
export VISUAL=$EDITOR
export PATH=$HOME/.local/bin:/usr/local/go/bin:$PATH

## oh-my-zsh
ZSH_THEME="purify"
plugins=(git zsh-syntax-highlighting)

## sourcing files
source $ZSH/oh-my-zsh.sh

## settings
bindkey -v

## aliases
alias bat="batcat"
alias cat="bat"
alias fd="fdfind"
alias l="ls -lah"
alias packunityproj="zip -r project.zip Assets/ ProjectSettings/ Packages/" 
alias zshsrc="source ~/.zshrc"

