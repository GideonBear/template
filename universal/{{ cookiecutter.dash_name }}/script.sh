#!/bin/bash

set -euo pipefail
set -x

gh api --method PUT /repos/{{ cookiecutter.__gh_slug }}/subscription -f subscribed=true
gh api --method PATCH /repos/{{ cookiecutter.__gh_slug }} -f allow_merge_commit=false

git init
pre-commit autoupdate
git add .
pre-commit run -a
git add .
git status
echo "Exit shell to continue or cancel"
bash
echo "Press enter to continue, ctrl+c to quit"
read
git commit -m "Initial commit"
git remote add origin https://github.com/{{ cookiecutter.__gh_slug }}
git push -u origin main
