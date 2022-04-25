neofetch

source ~/.zsh/antigen.zsh
antigen theme romkatv/powerlevel10k
antigen bundle 'command-not-found'
antigen bundle 'git'
antigen bundle 'wfxr/forgit'
antigen bundle 'zsh-users/zsh-autosuggestions'
antigen bundle 'zsh-users/zsh-syntax-highlighting'
antigen apply

eval "$(zoxide init zsh)"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## exports
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{.git,node_modules,**/*.meta}/*" 2> /dev/null'
export EDITOR=nvim
export TERMINAL=/bin/kitty
export VISUAL=$EDITOR

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH="$HOME/usr/local/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

## settings
bindkey -v

## aliases
alias cat="bat"
alias l="exa -aghHl@ --group-directories-first --icons --color always"
alias lt="l -T"
alias clip="xclip -selection clipboard"
alias n="nvim"
alias r=". ranger"

### ctrl+arrows
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
# urxvt
bindkey "\eOc" forward-word
bindkey "\eOd" backward-word

### ctrl+delete
bindkey "\e[3;5~" kill-word
# urxvt
bindkey "\e[3^" kill-word

### ctrl+backspace
bindkey '^H' backward-kill-word

### ctrl+shift+delete
bindkey "\e[3;6~" kill-line
# urxvt
bindkey "\e[3@" kill-line

