#!/usr/bin/env bash

set -e

git fetch upstream

git switch update-readme
git merge --no-edit upstream/main

git switch feat-git-cmd-option
git merge --no-edit upstream/main

git switch main
git merge --no-edit update-readme feat-git-cmd-option

git push --all
