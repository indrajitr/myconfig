# Adjust miscellaneous options

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=($plugins osx ssh-agent brew git github svn textmate gem ruby rails3)
typeset -U plugins

# Set theme
# export ZSH_THEME="jreese"
# export ZSH_THEME="gentoo"
export ZSH_THEME="gallifrey"

# Customize CDPATH
cdpath=($cdpath .. ~ ~/Projects/Libraries ~/Projects/Business ~/Projects/Community ~/Projects/Personal)
typeset -U cdpath
#export CDPATH=.:..:~:~/Projects/Libraries:~/Projects/Business:~/Projects/Community:~/Projects/Personal:$CDPATH


# unsetopt complete_aliases