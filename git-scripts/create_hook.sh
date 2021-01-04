#!/bin/sh

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GIT_HOOKS_DIR="${SCRIPT_DIR}/../.git/hooks"

if test -d "${GIT_HOOKS_DIR}"; then 
    cp ${SCRIPT_DIR}/commit_hook ${GIT_HOOKS_DIR}/commit-msg
    chmod 775 ${GIT_HOOKS_DIR}/commit-msg
else
   echo -e "ERROR:\n\tCould not find ${GIT_HOOKS_DIR} directory.\n\tAborting"
   exit 1
fi
