<template>
  <div>
    <prism :language="language" :plugins="[plugins]" :code="formatCode"></prism>
  </div>
</template>

<script>
import Prism from 'vue-prismjs'
export default {
  name: "DemoBox",
  components: {Prism},
  props: {
    language: {type: String, default: 'html'},
    code: {type: String, default: null},
    plugins: {type: String, default: null},
  },
  computed: {
    formatCode(){
      return this.code.trim()
    }
  }
}
</script>

<style scoped>

</style>
