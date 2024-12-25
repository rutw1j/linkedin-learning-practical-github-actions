#!/bin/bash

echo "---------------------------------------------------------------"

git config user.name "${GITHUB_ACTOR}"
git config user.email "${INPUT_EMAIL}"
git config --add safe.directory /github/workspace

python3 /usr/bin/linkedin-learning-practical-github-actions/podcast-generator/feed.py

git add -A && git commit -m "Update feed.py"
git push --set-upstream origin main

echo "---------------------------------------------------------------"