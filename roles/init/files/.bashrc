alias updatedb='sudo /usr/libexec/locate.updatedb'

git_branch() {
  echo $(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
}
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u \[\033[0;33m\]\W/\[\033[31m\]$(__git_ps1)\[\033[00m\] \$ '
# export PS1='\[\033[0;33m\]\u \[\033[0;33m\]\W/ \[\033[1;32m\]$(__git_ps1)\[\033[0m\]$ '

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
