#!/bin/sh
STARTD=${PWD}
NOW=$(date -u +%Y%m%dt%H%M%S)
HOST=${HOSTNAME:-$(hostname)}
UNQ=${NOW}.${RANDOM}.$$
COOKIES=/tmp/${UNQ}

date
CHROME="${1:-${HOME}/Library/Application Support/Google/Chrome/Default}"
[ -d "${CHROME}" ] && cd "${CHROME}"

[ -r Cookies  ] || exit 1

umask 0077

t=${STARTD}/cookies.txt
: </dev/null >${t}

trap "rm -f ${COOKIES}" 0
cp Cookies ${COOKIES}
curl -ks https://raw.githubusercontent.com/masterofthesith/withChromeCookies.sh/main/chrome.sh \
| sh \
>> ${STARTD:-.}/cookies.txt

exit 0
