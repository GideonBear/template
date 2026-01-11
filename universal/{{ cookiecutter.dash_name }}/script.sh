#!/bin/bash

set -euo pipefail
set -x

gh api --method PUT /repos/{{ cookiecutter.__gh_slug }}/subscription -f subscribed=true
gh api --method PATCH /repos/{{ cookiecutter.__gh_slug }} -f allow_merge_commit=false

git add .
git commit -m "Initial commit"
git remote add origin https://github.com/{{ cookiecutter.__gh_slug }}
git push -u origin main
