pfetch
eval $(ssh-agent -s)

## zplug
source ~/.zplug/init.zsh
zplug "wfxr/forgit"
zplug "dandavison/delta"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
# Then, source plugins and add commands to $PATH
zplug load --verbose
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## exports
export ZSH="/home/niscolas/.oh-my-zsh"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{.git,node_modules,**/*.meta}/*" 2> /dev/null'
export EDITOR=vi
export VISUAL=$EDITOR
export UNITY_EDITOR="/mnt/c/Program Files/UnityEditors/2021.2.0f1"

## oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(zsh-syntax-highlighting)


## sourcing files
source $ZSH/oh-my-zsh.sh

## settings
bindkey -v

## aliases
alias cat="bat"
alias l="ls -lah"
alias packunityproj="zip -r project.zip Assets/ ProjectSettings/ Packages/" 
alias zshsrc="source ~/.zshrc"
# alias cdrr="cd \"$(git rev-parse --show-toplevel)\""
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

