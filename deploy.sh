#!/usr/bin/env bash
# One-shot deploy script for the Weekly Wins app to GitHub Pages.
# Run this AFTER you've created an empty repo at https://github.com/new
# named "weekly-wins" (no README, no .gitignore — let this script populate it).
#
# Prereqs:
#   - git installed
#   - You're already authenticated with GitHub (either gh CLI, SSH key,
#     or a personal access token cached by git credential helper)
#
# Usage:
#   cd ~/work/weekly-wins-repo
#   bash deploy.sh

set -e

GITHUB_USER="mimicdeveloper"
REPO_NAME="weekly-wins"

echo "→ Initializing git repo..."
git init -q
git checkout -q -b main 2>/dev/null || git checkout -q main

echo "→ Staging files..."
git add index.html README.md LICENSE deploy.sh
git commit -q -m "Initial commit — Weekly Wins app"

echo "→ Setting remote to git@github.com:${GITHUB_USER}/${REPO_NAME}.git ..."
echo "  (if you prefer HTTPS, edit this line in deploy.sh)"
git remote remove origin 2>/dev/null || true
git remote add origin "git@github.com:${GITHUB_USER}/${REPO_NAME}.git"

echo "→ Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Pushed!"
echo ""
echo "Now finish enabling GitHub Pages:"
echo "  1. Open: https://github.com/${GITHUB_USER}/${REPO_NAME}/settings/pages"
echo "  2. Under 'Source', choose: Deploy from a branch"
echo "  3. Branch: main, folder: / (root). Click Save."
echo "  4. Wait ~1 minute, then visit:"
echo "     https://${GITHUB_USER}.github.io/${REPO_NAME}/"
echo ""
