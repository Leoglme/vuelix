<template lang="html">
  <button
    class="vx-button vx-button-info vx-button-filled"
    :class="size"
    v-bind="$attrs"
    v-on="$listeners">
    <slot/>
  </button>
</template>
<script>
export default {
  name: "vxButton",
  inheritAttrs:false,
  props: {
    size: {type: String, default: null}, //large or small,
  },
  data:()=>({
  }),
}
</script>

<style lang="scss" src="./main.scss" scoped>

</style>
