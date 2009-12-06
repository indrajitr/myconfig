# base-files version 3.7-1

# Customized for OS X (Darwin) by Indrajit, 2008-07-26

# To pick up the latest recommended .bashrc content,
# look in /etc/defaults/etc/skel/.bashrc from a Cygwin installation.

# Also see: http://tldp.org/LDP/abs/html/sample-bashrc.html

# In OS X, both /etc/profile and ~/.profile is automatically loaded if present.
# In case both are present, ~/.profile loades *after* /etc/profile.
#
# Further, in OS X, ~/.profile wins if present. Therefore, ensure that 
# ~/.bashrc is loaded by ~/.profile. Just like /etc/profile automatically loads
# /etc/bashrc

# Modifying /etc/skel/.bashrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bashrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benificial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bashrc file


# Shell Options
# #############

# See man bash for more options...

# Don't wait for job termination notification
# set -o notify

# Don't use ^D to exit
# set -o ignoreeof

# Use case-insensitive filename globbing
# shopt -s nocaseglob

# Make bash append rather than overwrite the history on disk
# shopt -s histappend

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
# UPDATE: Now in /etc/bashrc
#shopt -s cdspell

# Adjust Prompt to a more convenient form
# UPDATE: Now in /etc/bashrc
#PS1="[\u@\h: \W]\\$ "


# Completion options
# ##################

# These completion tuning parameters change the default behavior of bash_completion:

# Define to access remotely checked-out files over passwordless ssh for CVS
# COMP_CVS_REMOTE=1

# Define to avoid stripping description in --option=description of './configure --help'
# COMP_CONFIGURE_HINTS=1

# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1

# If this shell is interactive, turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
# UPDATE: Now in /etc/bashrc
# case $- in
#   *i*) [[ -f /etc/bash_completion ]] && . /etc/bash_completion ;;
# esac


# History Options
# ###############

# Don't put duplicate lines in the history.
# UPDATE: Now in /etc/bashrc
#export HISTCONTROL="ignoredups"

# Ignore some controlling instructions
# UPDATE: Now in /etc/bashrc
#export HISTIGNORE="[   ]*:&:bg:fg:exit:ls:ll:l"

# Increase the maximum number of lines contained in the history file.
# Default is 500.
export HISTFILESIZE=8000

# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"


# Aliases
# #######

# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.

# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# Default to human readable figures
# alias df='df -h'
# alias du='du -h'

# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
# alias grep='grep --color'                     # show differences in colour

# Some shortcuts for different directory listings
# alias ls='ls -hF --color=tty'                 # classify files in colour
# alias dir='ls --color=auto --format=vertical'
alias vdir='ls -G --format=long'
# alias ll='ls -l'                              # long list
alias ll='ls -lG'                               # long list, colored
# alias la='ls -A'                              # all but . and ..
alias l='ls -CFG'                               #

# Custom shortcuts
#alias wg='wget --server-response --timestamping --continue'
#alias wgc='wget --timestamping --load-cookies "/cygdrive/c/Users/Indrajit/AppData/Roaming/Mozilla/Firefox/Profiles/6ew26973.default/cookies.txt"'

#alias crl='curl --location --remote-time --continue-at - --remote-name'
alias crl='/usr/bin/curl --location-trusted --remote-time --continue-at - --remote-name'

alias cdd='cd "${HOME}/Downloads"'
alias cdp='cd "${HOME}/Projects"'

# OpenTerminal (ref: Read me (Inportant).pdf distributed with OpenTerminal)
alias cdf='eval `osascript /Applications/Utilities/OpenTerminal.app/Contents/Resources/Scripts/OpenTerminal.scpt `'

# JRuby (ref: http://wiki.jruby.org/wiki/Getting_Started#How_do_I_run_rake.2C_gem.2C_etc.)
alias jr='jruby -S'

# Use newer version of Maven
alias mvn='/usr/local/maven/bin/mvn'
alias mvnDebug='/usr/local/maven/bin/mvnDebug'


# Less Options
# ############

# less initialization script (sh)
# UPDATE: Now in /etc/bashrc
#[ -x /usr/local/bin/lesspipe.sh ] && export LESSOPEN="|/usr/local/bin/lesspipe.sh %s"


# Functions
# #########

# Some example functions
# function settitle() { echo -ne "\e]2;$@\a\e]1;$@\a"; }
