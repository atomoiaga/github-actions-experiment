#!/usr/bin/env bash

BRANCH="$(git rev-parse --abbrev-ref HEAD)"

if [[ "$BRANCH" == "staging" ]]; then
  git checkout develop && git merge staging && git push origin develop
  exit 0;
fi

echo 'Not on staging branch.';