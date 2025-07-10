#!/bin/bash -e

source ~/.profile

if [ $# -eq 0 ]; then
    set -- npm --version
    echo "Arguments: $#"
fi
if [ $1 = 'npm' ]; then
    shift
    exec npm "$@"
fi
echo "Running command: $@"
exec "$@"
EOF
