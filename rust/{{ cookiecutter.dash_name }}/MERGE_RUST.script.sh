#!/bin/bash

set -euo pipefail
set -x

gh api --method PUT /repos/{{ cookiecutter.__gh_slug }}/actions/permissions/workflow -F can_approve_pull_request_reviews=true
