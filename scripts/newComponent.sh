NAME="$1"
NAME="${NAME^}"

if [ -e "src/components/vx$NAME" ]
then
    echo "This component already exists in vuelix or the name is the same"
else
echo '---
API:
 - name: myProp
   type: String
   parameters: null
   description: My Description prop.
   default: null
---
# '$NAME' **- new**
<box header>
  Text and description
</box>
<box>
## Default
<vuecode md>
<div slot="demo">
<h1>'$NAME'</h1>
  <Demos-'$NAME'-Default />
</div>
<div slot="code">
```html
```
</div>
</vuecode>
</box>' > docs/components/$1.md

cd src/components
mkdir vx$NAME
cd -
echo '<template lang="html">
  <button
    class="vx-component vx-'${NAME,,}'"
    v-bind="$attrs"
    v-on="$listeners">
    Component vx'$NAME'
  </button>
</template>
<script>
export default {
  name: "vx'$NAME'",
  inheritAttrs:false,
  data:()=>({
  }),
}
</script>' > src/components/vx$NAME/vx$NAME.vue

# editar config.js para agregar el componente nuevo al menu

echo "import vxComponent from './vx$NAME'
export default Vue => {
  Vue.component(vxComponent.name, vxComponent)
}" > src/components/vx$NAME/index.js

echo -e "export { default as vx$NAME } from './vx$NAME' \n"  >> src/components/index.js

echo ".vx-${NAME,,} {
background: rgb(14, 142, 25)};"> src/components/vx$NAME/main.scss


SRC="\'\/components\/$1\',\n          \/\*New Component\*\/"
sed -e "s/\/\*New Component\*\//$SRC/" docs/.vuepress/config.js > script_tmp
mv script_tmp docs/.vuepress/config.js

cd docs/.vuepress/components/Demos || exit

mkdir $NAME

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
</style>' > docs/.vuepress/components/Demos/$NAME/Default.vue

IMPORT="export { default as vx$NAME } from '.\/vx$NAME'\n\/\/New Component import"

sed -e "s/\/\/New Component import/$IMPORT/" src/components/index.js > script_tmp
mv script_tmp src/components/index.js

fi
