# Defer initialization of nvm until nvm, node or a node-dependent command is
# run.
#
# from: https://www.growingwiththeweb.com/2018/01/slow-nvm-init.html

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')

function __init_nvm() {
    for i in "${__node_commands[@]}"; do unalias $i; done
    . "$NVM_DIR"/nvm.sh
    unset __node_commands
    unset -f __init_nvm

    if [[ -v AFTER_NVM_INIT ]]; then
      eval ${AFTER_NVM_INIT}
    fi
}

for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done