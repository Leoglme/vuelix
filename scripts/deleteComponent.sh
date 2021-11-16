#!/bin/bash
NAME="$1"
NAME="${NAME^}"
RED='\033[0;31m'
GREEN='\033[0;32m'

if [ -e "src/components/vx$NAME" ]; then
  rm -rf "src/components/vx$NAME"
  printf "${GREEN} directory 'components/vx$NAME' is removed %s\n"
else
  printf "${RED} directory 'components/vx$NAME' does not exist %s\n"
fi

if [ -e "docs/components/$1.md" ]; then
  rm -f "docs/components/$1.md"
  printf "${GREEN} 'docs/components/$1.md' file is removed %s\n"
else
  printf "${RED} 'docs/components/$1.md' file does not exist %s\n"
fi

if [ -e "docs/.vuepress/components/Demos/$NAME" ]; then
  rm -rf "docs/.vuepress/components/Demos/$NAME"
  printf "${GREEN} directory 'docs/.vuepress/components/Demos/$NAME' is removed %s\n"
else
  printf "${RED} directory 'docs/.vuepress/components/Demos/$NAME' does not exist %s\n"
fi

#Todo delete config imports

if [ -e "src/components/index.js" ]; then
  sed -i "/export { default as vx$NAME }/d" src/components/index.js
  printf "${GREEN} file row in 'src/components/index.js' is removed %s\n"
else
  printf "${RED} file 'src/components/index.js' does not exist %s\n"
fi

if [ -e "docs/.vuepress/config.js" ]; then
  sed -i "/'\/components\/$1',/d" docs/.vuepress/config.js
  printf "${GREEN} file row in 'docs/.vuepress/config.js' is removed %s\n"
else
  printf "${RED} file docs/.vuepress/config.js' does not exist %s\n"
fi
