NAME="$1"

MAYUS="$1"
MAYUS=($MAYUS)
MAYUS="${MAYUS[@]^}"

if [ -e "src/components/vx$MAYUS" ]
then
    echo "This component already exists in vuesax or the name is the same"
else

# crear documento del componente nuevo

echo '---
API:
 - name: myProp
   type: String
   parameters: null
   description: My Description prop.
   default: null
---
# '$MAYUS' **- new**
<box header>
  Text and description
</box>
<box>
## Default
<vuecode md>
<div slot="demo">
  <Demos-'$MAYUS'-Default />
</div>
<div slot="code">
```html
```
</div>
</vuecode>
</box>' > docs/components/$1.md

# dir componentes

cd src/components

# crear la carpeta del nuevo componente

mkdir vx$MAYUS

cd -

# crear archivo .vue del nuevo componente

echo '<template lang="html">
  <div
    class="vx-component vx-'${NAME,,}'"
    v-bind="$attrs"
    v-on="$listeners">
    Component vx'$MAYUS'
  </div>
</template>
<script>
export default {
  name: "vx'$MAYUS'",
  inheritAttrs:false,
  data:()=>({
  }),
}
</script>' > src/components/vx$MAYUS/vx$MAYUS.vue

# editar config.js para agregar el componente nuevo al menu

echo "import vxComponent from './vx$MAYUS'
export default Vue => {
  Vue.component(vxComponent.name, vxComponent)
}" > src/components/vx$MAYUS/index.js

echo ".vx-${NAME,,}
  background: rgb(14, 142, 25)" > src/components/vx$MAYUS/main.scss


SRC="\'\/components\/$1\',\n          \/\*New Component\*\/"

sed -e "s/\/\*New Component\*\//$SRC/" docs/.vuepress/config.js > script_tmp
mv script_tmp docs/.vuepress/config.js

# agregar ejemplo para documentos del nuevo componente

cd docs/.vuepress/components/Demos

mkdir $MAYUS

cd -

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
</style>' > docs/.vuepress/components/Demos/$MAYUS/Default.vue


# agregar import

IMPORT="export { default as vx$MAYUS } from '.\/vx$MAYUS'\n\/\/New Component import"

sed -e "s/\/\/New Component import/$IMPORT/" src/components/index.js > script_tmp
mv script_tmp src/components/index.js

fi
