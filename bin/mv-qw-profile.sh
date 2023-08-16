
KULLANIM="kullanim: ${0} <qw-profil> <qw-yeni-profil>"
if [[ -z "${2}" ]] ; then
    echo ${KULLANIM}
    exit 1
fi
OLDPROFILE="${1}"
NEWPROFILE="${2}"
for i in ~/.qw-env/pwd.ozelprofil.${NEWPROFILE}.window* ~/.qw-env/bash_history.ozelprofil.${NEWPROFILE}.window* ~/.qw-tmp/${NEWPROFILE}; do
    if [[ -r "${i}" ]] ; then
        echo "Profile zaten varmis"
        exit 1;
    fi
done

set -x
for i in $(seq 4); do
    mv ~/.qw-env/pwd.ozelprofil.${OLDPROFILE}.window${i} ~/.qw-env/pwd.ozelprofil.${NEWPROFILE}.window${i}
    mv ~/.qw-env/bash_history.ozelprofil.${OLDPROFILE}.window${i} ~/.qw-env/bash_history.ozelprofil.${NEWPROFILE}.window${i}
    mv ~/.qw-tmp/${OLDPROFILE} ~/.qw-tmp/${NEWPROFILE}
done

