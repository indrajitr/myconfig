# Adjust less options

# Note, git pager uses this variable to format the output properly.
# Git pager defaults to the LESS variable set to FRSX. For this behavior to be preserved,
# set core.pager to "less -+$LESS -FRSX"
export LESS="-i -z-4 -M"
# Set lesspipe
[[ -x `which lesspipe.sh` ]] && export LESSOPEN="|lesspipe.sh %s"
# [[ -x `brew --prefix`/bin/lesspipe.sh ]] && export LESSOPEN="|`brew --prefix`/bin/lesspipe.sh %s"
# Also see: https://github.com/mattfoster/zshkit/blob/master/06_less
