#!/bin/bash
GREEN='\033[0;32m'
# abort on errors
set -e

# build
yarn docs:build
printf "${GREEN} Docs build running...\n"
cd docs/.vuepress/dist
git add -A
git commit -m 'docs deployment'
git push
printf "${GREEN} GIT push...\n"
