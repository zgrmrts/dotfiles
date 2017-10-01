# git aware prompt
source ${DOTFILES}/bin/gitprompt.sh

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

