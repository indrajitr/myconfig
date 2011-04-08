# .profile based on Cygwin base-files version 3.7-1

# Customized for OS X (Darwin) by Indrajit, 2008-07-26

# To pick up the latest recommended .bash_profile content,
# look in /etc/defaults/etc/skel/.bash_profile from a Cygwin installation.

# The copy in your home directory (~/.profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# ~/.profile: executed by bash for login shells.

# source the system wide bashrc if it exists
# if [ -e /etc/bash.bashrc ] ; then
#   source /etc/bash.bashrc
# fi

# source the users bashrc if it exists
if [ "${BASH-no}" != "no" -a -e "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
  PATH=${HOME}/bin:${PATH}
fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH=${HOME}/man:${MANPATH}
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH=${HOME}/info:${INFOPATH}
# fi


# The preferred order are (a) the current directory (empty string between the = and the first colon) 
# (b) the parent directory, (c) the home directory, and (d) the ~/Projects directory
# See http://www.commandlinefu.com/commands/view/1560/set-cdpath-to-ease-navigation
export CDPATH=.:..:~:~/Projects/Libraries:~/Projects/Business:~/Projects/Community:~/Projects/Personal:$CDPATH
