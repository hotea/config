export CDPATH=.:~:/etc

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

#alias ..="cd .."
#alias ...="cd ../.."
#alias ....="cd ../../../"
#alias .....="cd ../../../.."

#alias cd..="cd .."
#alias cd...="cd ../.."
#alias cd....="cd ../../.."
#alias cd.....="cd ../../../.."
#alias cd......="cd ../../../../.."

#alias cd1="cd .."
#alias cd2="cd ../.."
#alias cd3="cd ../../.."
#alias cd4="cd ../../../.."
#alias cd5="cd ../../../../.."

	
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

shopt -s cdspell


export HISTTIMEFORMAT='%F %T '
alias h1='history 10'
alias h2='history 20'
alias h3='history 30'
export HISTCONTROL=ignoredups
export HISTCONTROL=erasedups
export HISTCONTROL=ignorespace
export HISTIGNORE="pwd:ls:ls –ltr:"



bind "set completion-ignore-case on"



