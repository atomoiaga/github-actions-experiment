#!/usr/bin/env bash

BRANCH="$(git rev-parse --abbrev-ref HEAD)"

if [[ "$BRANCH" == "staging" ]]; then
  git checkout develop && git merge staging && git push origin develop && git checkout staging;
  exit 1;
fi

echo 'Do stuff';