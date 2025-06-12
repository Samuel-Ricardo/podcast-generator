#!/bin/bash

echo "====================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${GITHUB_EMAIL}"
git config --global --add sage.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "[ :octocat: ] | generate: feed (github::actions)"

git push --set-upstream origin samuel/main

echo "====================="
