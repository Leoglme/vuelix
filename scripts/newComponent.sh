COMPONENT="$1"
COMPONENT="${COMPONENT^}"
CATEGORY="$2"
RED='\033[0;31m'
GREEN='\033[0;32m'
PATH="src/components"


if [ -n "$CATEGORY" ]; then
  if [ -e "src/$CATEGORY" ]; then
    printf "${GREEN} creation of the ${COMPONENT} component in the ${CATEGORY} category %s\n"
    PATH="src/components/$CATEGORY"
    else
      mkdir -p "src/components/$CATEGORY"
      PATH="src/components/$CATEGORY"
      printf "${GREEN} creation of the component ${COMPONENT} and the new category ${CATEGORY} %s\n"
      fi
else
  CATEGORY="components"
  printf "${GREEN} creation of the ${COMPONENT} component %s\n"
fi

if [ -e "$PATH/vx$COMPONENT" ]
then
    printf "${GREEN} This component already exists in vuelix or the COMPONENT is the same %s\n"
else
echo '---
API:
 - name: myProp
   type: String
   parameters: null
   description: My Description prop.
   default: null
---
# '$COMPONENT' **- new**
<box header>
  Text and description
</box>
<box>
## Default
<vuecode md>
<div slot="demo">
<h1>'$COMPONENT'</h1>
  <Demos-'$COMPONENT'-Default />
</div>
<div slot="code">
```html
```
</div>
</vuecode>
</box>' > "docs/$CATEGORY/$1.md"

cd $PATH
mkdir vx$COMPONENT
cd -
echo '<template lang="html">
  <button
    class="vx-component vx-'${COMPONENT,,}'"
    v-bind="$attrs"
    v-on="$listeners">
    Component vx'$COMPONENT'
  </button>
</template>
<script>
export default {
  COMPONENT: "vx'$COMPONENT'",
  inheritAttrs:false,
  data:()=>({
  }),
}
</script>' > "$PATH/vx$COMPONENT/vx$COMPONENT.vue"


echo "import vxComponent from './vx$COMPONENT'
export default Vue => {
  Vue.component(vxComponent.COMPONENT, vxComponent)
}" > "$PATH/vx$COMPONENT/index.js"

echo -e "export { default as vx$COMPONENT } from './vx$COMPONENT' \n"  >> "$PATH/index.js"

echo ".vx-${COMPONENT,,} {
background: rgb(14, 142, 25)};"> "$PATH/vx$COMPONENT/main.scss"


SRC="\'\/components\/$1\',\n          \/\*New Component\*\/"
sed -e "s/\/\*New Component\*\//$SRC/" docs/.vuepress/config.js > script_tmp
mv script_tmp docs/.vuepress/config.js

cd docs/.vuepress/components/Demos || exit

mkdir $COMPONENT

cd - || exit

echo '<template lang="html">
  <div>
    <vx-'$1' />
  </div>
</template>
<script>
export default {
}
</script>
<style lang="scss">
</style>' > docs/.vuepress/components/Demos/$COMPONENT/Default.vue

IMPORT="export { default as vx$COMPONENT } from '.\/vx$COMPONENT'\n\/\/New Component import"

sed -e "s/\/\/New Component import/$IMPORT/" src/components/index.js > script_tmp
mv script_tmp src/components/index.js

fi
