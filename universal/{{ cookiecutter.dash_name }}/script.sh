#!/bin/bash

set -euo pipefail
set -x

mv -i "$0" ..

gh api --method PUT /repos/{{ cookiecutter.__gh_slug }}/subscription -f subscribed=true
gh api --method PATCH /repos/{{ cookiecutter.__gh_slug }} -f allow_merge_commit=false
gh api --method PUT /repos/{{ cookiecutter.__gh_slug }}/immutable-releases

git init
pre-commit autoupdate
git add .
pre-commit run -a || true
echo "You will now be shown the diff from the initial pre-commit run. Press enter to continue."
# shellcheck disable=SC2162
read
uv venv --clear
git diff
git add .
git status
echo "Exit shell to continue or cancel"
bash
echo "Press enter to continue, ctrl+c to quit"
# shellcheck disable=SC2162
read
git commit -m "Initial commit"
git remote add origin https://github.com/{{ cookiecutter.__gh_slug }}
git push -u origin main

garbage put "../$0"
