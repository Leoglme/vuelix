#!/bin/bash
GREEN='\033[0;32m'
# abort on errors
set -e

# build
yarn build
printf "${GREEN} Docs build running...\n"
cd dist


yarn v
npm publish

git add -A
git commit -m 'npm library deployment'
git push
