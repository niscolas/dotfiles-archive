export ZSH=$HOME/.oh-my-zsh

# xrandr: set secondary monitor (HDMI) above primary monitor (notebook screen)
xrandr --output LVDS-1 --below HDMI-1
# exports
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export XDG_CURRENT_DESKTOP=GNOME
## exporting to PATH
### Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# sourcing files
## ruby config
source $HOME/.rvm/scripts/rvm

# Aliases for a few useful commands
alias cls="colorls"
alias i="code-insiders"
alias l="ls -lAh"
alias h="htop"
alias n="nautilus"
alias v="sudo nvim"
alias vi="nvim"
alias vim="nvim"
alias x="xkill"

# Show OS info when opening a new terminal
# neofetch

# Set name of the theme to load.
ZSH_THEME="purify"

# Font mode for powerlevel9k
POWERLEVEL9K_MODE="nerdfont-complete"

# Command auto-correction.
ENABLE_CORRECTION="true"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"

##

# Prompt settings
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR_ICON=$'\ue0b0'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR_ICON=$'\ue0b2'

##

# Left Prompt Segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
    time
    context
    ssh
    dir
    newline
    status)

# OS segment
POWERLEVEL9K_TIME_BACKGROUND='024'
POWERLEVEL9K_TIME_FOREGROUND='white'
#POWERLEVEL9K_LINUX_ICON='%F{white}\ue712 %F{white}linux%f'

# Context Segment
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='white'

# Dir colours
#POWERLEVEL9K_DIR_HOME_BACKGROUND='black'
#POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='black'
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
#POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'

# Status
POWERLEVEL9K_STATUS_OK_ICON=$'\uf164'
POWERLEVEL9K_STATUS_ERROR_ICON=$'\uf165'
POWERLEVEL9K_STATUS_ERROR_CR_ICON=$'\uf165'

##

# Right Prompt Segments
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    vcs
    background_jobs
    go_version
    rbenv)

# VCS icons
POWERLEVEL9K_VCS_GIT_ICON=$'\uf1d2 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf113 '
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=$'\uf296 '
POWERLEVEL9K_VCS_BRANCH_ICON=$''
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

# VCS colours
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='blue'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'

# VCS CONFIG
POWERLEVEL9K_VCS_SHOW_CHANGESET=false

# Battery
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='red'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='blue'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='green'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='blue'
POWERLEVEL9K_BATTERY_VERBOSE=true

# Programming languages
#POWERLEVEL9K_RBENV_PROMPT_ALWAYS_SHOW=true
#POWERLEVEL9K_GO_VERSION_PROMPT_ALWAYS_SHOW=true

# Plugins to load
plugins=(git
         virtualenv)

## Oh-my-zsh config	 
source $ZSH/oh-my-zsh.sh

# exports
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export XDG_CURRENT_DESKTOP=GNOME
## exporting to PATH
### Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# sourcing files
## ruby config
source $HOME/.rvm/scripts/rvm
