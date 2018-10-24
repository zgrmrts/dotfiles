# git aware prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM=auto
GIT_PS1_STATESEPARATOR=
GIT_PS1_DESCRIBE_STYLE=branch
GIT_PS1_SHOWCOLORHINTS=true
source ${DOTFILES}/bin/git-prompt.sh
PROMPT_COMMAND='__git_ps1 "\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]" " \$ " " (%s)"'

alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'
alias ls='ls -h --color'
alias ll="ls -lv --group-directories-first"

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

# bash history
if [[ -n $SHELL_PROFILE ]]; then
    HISTFILE=~/.bash_history."$SHELL_PROFILE"
    # save immediately after every command when history files are separate
    PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
fi
HISTSIZE=100000
HISTFILESIZE=100000
