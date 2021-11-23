#!/bin/sh
set -o errexit
set -o nounset

UPSTREAM=${1:-'@{u}'}
LOCAL="$(git rev-parse @)"
REMOTE="$(git rev-parse "$UPSTREAM")"
BASE="$(git merge-base @ "$UPSTREAM")"


if [ "$LOCAL" = "$REMOTE" ]; then
    echo "Up-to-date"
elif [ "$LOCAL" = "$BASE" ]; then
    echo "Need to pull"
    git pull
    git submodule update
    docker compose down
    docker compose build
    docker compose up
else
    echo "Diverged"
fi
