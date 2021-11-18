# abort on errors
set -e

# build
yarn docs:build

cd docs/.vuepress/dist
git add -A
git commit -m 'docs deployment'
git push
