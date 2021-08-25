# exports
export ZSH="/home/niscolas/.oh-my-zsh"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{.git,node_modules,**/*.meta}/*" 2> /dev/null'
export EDITOR=/bin/nvim
export VISUAL=$EDITOR
#export MAIN_UNITY=/mnt/c/Arquivos de Programas/Unity/Hub/Editor/2020.3.0f1/Editor/Unity.exe
export PATH="$HOME/.local/bin:$PATH"

# settings
bindkey -v

ZSH_THEME="purify"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# aliases
alias l="ls -lah"
alias zshconfig="n ~/.zshrc"
alias zshsrc="source ~/.zshrc"
alias ohmyzsh="n ~/.oh-my-zsh"
alias clip="clip.exe"
# aliases (navigation / searching)
alias r="ranger"
alias bat="batcat"
alias cat="bat"
alias fd="fdfind"
# aliases (vim)
alias vimconfig="n ~/.vimrc"
# aliases (unity)
#alias regen_unity_csprojs="$MAIN_UNITY -batchmode -nographics -logFile - -executeMethod UnityEditor.SyncVS.SyncSolution -projectPath . -quit"
alias packunityproj="zip -r project.zip Assets/ ProjectSettings/ Packages/" 
