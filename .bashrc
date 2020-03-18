# git aware prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM=auto
GIT_PS1_STATESEPARATOR=
GIT_PS1_DESCRIBE_STYLE=branch
GIT_PS1_SHOWCOLORHINTS=true
source ${DOTFILES}/bin/git-prompt.sh
PROMPT_COMMAND='__git_ps1 "\[\033[01;36m\]\u\[\033[00m\]\[\033[01;35m\]@\[\033[00m\]\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]" "\$ " "\[\033[01;33m\][\[\033[00m\]%s\[\033[01;33m\]]\[\033[00m\]"'

alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'
alias ll="ls -lv"

notes() {
  if [ ! -z "$1" ]; then
    # Using the "$@" here will take all parameters passed into
    # this function so we can place everything into our file.
    echo "$@" >> "$HOME/notes.md"
  else
    # If no arguments were passed we will take stdout and place
    # it into our notes instead.
    cat - >> "$HOME/notes.md"
  fi
}

# bash history & working directory
if [[ -n $SHELL_PROFILE ]]; then
    # save immediately after every command when history files are separate
    HISTFILE=~/.bash_history."$SHELL_PROFILE"
    PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
    # save working directory after every shell command
    PWDFILE=~/.pwd."$SHELL_PROFILE"
    PROMPT_COMMAND="pwd>${PWDFILE};$PROMPT_COMMAND"
    # restore wd, if any exists for this profile
    if [[ -r ${PWDFILE} ]]; then
        cd $(cat ${PWDFILE}) 2>/dev/null
    fi
fi
HISTSIZE=100000
HISTFILESIZE=100000

# minicom
export MINICOM="-l -L -w -c on -a on"

# completion
source ${DOTFILES}/etc/terminator-completion.bash

