<template lang="html">
  <button
    class="vx-button"
    v-bind="$attrs"
    v-on="$listeners">
    Component vxButton
  </button>
</template>
<script>
export default {
  name: "vxButton",
  inheritAttrs:false,
  data:()=>({
  }),
}
</script>

<style lang="scss" src="./main.scss" scoped>

</style>
