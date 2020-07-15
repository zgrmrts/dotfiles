#/usr/bin/env bash

_qw_competions()
{
    local numargs=${#COMP_WORDS[@]}
    if (( numargs != 2 )) ; then
        return;
    fi
    local suggestions=($(compgen -W "$(for i in $(ls ~/.qw-env/pwd.ozelprofil.*); do j=${i#*ozelprofil.}; echo ${j%.window*}; done | sort | uniq)" -- ${COMP_WORDS[numargs-1]}))
    COMPREPLY=("${suggestions[@]}")
}

complete -F _qw_competions qw
