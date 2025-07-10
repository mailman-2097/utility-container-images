#!/bin/bash -e

if [ $# -eq 0 ]; then
    set -- composer --version
    echo "Arguments: $#"
fi
if [ $1 = 'composer' ]; then
    shift
    exec composer "$@"
fi
echo "Running command: $@"
exec "$@"
EOF
