#!/bin/bash -e

source ~/.profile

if [ $# -eq 0 ]; then
    set -- ng version
    echo "Arguments: $#"
fi
if [ $1 = 'ng' ]; then
    shift
    exec ng "$@"
fi
echo "Running command: $@"
exec "$@"
EOF
