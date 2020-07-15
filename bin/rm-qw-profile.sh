
KULLANIM="kullanim: ${0} <qw-profil>"
if [[ -z "${1}" ]] ; then
    echo ${KULLANIM}
    exit 1
fi
PROFILE="${1}"
set -x
rm -f ~/.qw-env/pwd.ozelprofil.${PROFILE}.window*
rm -f ~/.qw-env/bash_history.ozelprofil.${PROFILE}.window*

