<template lang="html">
  <span v-bind="$attrs" v-on="$listeners" class="material-icons-outlined">{{ icon }}</span>
</template>
<script>
export default {
  name: "vxIcon",
  inheritAttrs: false,
  data: () => ({}),
  props: {
    icon: {type: String, default: null}
  },
}
</script>


<style lang="scss" src="./main.scss">

</style>
