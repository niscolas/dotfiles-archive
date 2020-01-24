export ZSH=$HOME/.oh-my-zsh
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_231
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$HOME/Android/Sdk

# evals
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# xrandr: set secondary monitor (HDMI) above primary monitor (notebook screen)
#xrandr --output LVDS-1 --below HDMI-1
# exports
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export XDG_CURRENT_DESKTOP=GNOME
## exporting to PATH
### Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:/opt/android-studio/bin"
export PATH="$PATH:/opt/intellij/bin"
# avdmanager, sdkmanager
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
# adb, logcat
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
# emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

# sourcing files
## ruby config
if [[ -a $HOME/.rvm/scripts/rvm ]]; then
	source $HOME/.rvm/scripts/rvm
fi

# Aliases for a few useful commands
alias cls="colorls"
alias i="code-insiders"
alias l="ls -lAh"
alias h="htop"
alias n="nemo . &"
alias ports="sudo lsof -i -P -n"
alias v="sudo nvim"
alias vi="nvim"
alias vim="nvim"
alias x="xkill"

# Show OS info when opening a new terminal
# neofetch

# Set name of the theme to load.
ZSH_THEME="purify"

## Oh-my-zsh config	 
source $ZSH/oh-my-zsh.sh
