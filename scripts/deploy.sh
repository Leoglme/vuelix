# abort on errors
set -e

# build
yarn build

cd dist

yarn v
npm publish

git add -A
git commit -m 'npm library deployment'
git push
