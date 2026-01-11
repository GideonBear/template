#!/bin/bash

set -euo pipefail
set -x

if [[ -e "your-cookiecutter" ]]; then
    echo "Remove the previous your-cookiecutter first"
    exit 1
fi

mkdir your-cookiecutter

for arg in "$@"; do
    rsync -a "$arg/" "your-cookiecutter/"
done

cookiecutter your-cookiecutter
