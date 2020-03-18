#/usr/bin/env bash

_terminator_competions()
{
    local numargs=${#COMP_WORDS[@]}
    if (( numargs < 3 )) ; then
        return;
    fi
    local larg
    local vararg
    ((larg=numargs-2))
    ((vararg=numargs-1))
    if [[ ${COMP_WORDS[${larg}]} != "-l" ]]; then
        return;
    fi
    local suggestions=($(compgen -W "$(cat ~/.config/terminator/config | awk '{if ($1~"\\[\\[\\[.*\\]\\]\\]") {l3=$1;} else if ($1~"\\[\\[.*\\]\\]") {l2=$1; if (l1=="[layouts]") print $1;} else if ($1~"\\[.*\\]") {l1=$1;} }' | tr -d '[]')" -- ${COMP_WORDS[vararg]}))
    COMPREPLY=("${suggestions[@]}")
}

complete -F _terminator_competions terminator
