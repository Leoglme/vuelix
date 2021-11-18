<template lang="html">
  <span v-bind="$attrs" @click="$emit('click')"
        :style="{
    'color': color,
    'font-size': computeSize,
    'background': bg,
    'border-radius': round ? '99%' : null,
    'margin': margin + 'px',
    'margin-right': marginRight + 'px',
    'margin-left': marginLeft + 'px',
    'margin-top': marginTop + 'px',
    'margin-bottom': marginBottom + 'px'
  }"
        v-on="$listeners" :class="theme">{{ icon }}</span>
</template>
<script>
export default {
  name: "vxIcon",
  inheritAttrs: false,
  data: () => ({
    sizeValues: [
        {key: 'small', value: 'small'},
        {key: 'medium', value: 'xx-large'},
        {key: 'large', value: 'xxx-large'}
    ]
  }),
  props: {
    icon: {type: String, default: null},
    color: {type: String, default: null},
    size: {type: [String, Number], default: null},
    themes: {type: String, default: null},
    bg: {type: String, default: null},
    round: {type: Boolean, default: false},
    marginRight: {type: [String, Number], default: null},
    marginLeft: {type: [String, Number], default: null},
    marginTop: {type: [String, Number], default: null},
    marginBottom: {type: [String, Number], default: null},
    margin: {type: [String, Number], default: null},
  },
  computed: {
    theme() {
      switch (this.themes) {
        case 'outlined':
          return 'material-icons-outlined'
        case 'two-tone':
          return 'material-icons-two-tone'
        case 'sharp':
          return 'material-icons-sharp'
        case 'rounded':
          return 'material-icons-round'
        case 'filled':
          return 'material-icons'
        default:
          return 'material-icons'
      }
    },
    computeSize() {
      if (!this.size)
        return;
      const findSize = this.sizeValues.find(e => e.key === this.size);
      if (findSize){
        return findSize.value;
      }
      if (typeof this.size === 'string') {
        return this.size;
      }
      return this.size + "px";
    }
  }
}
</script>


<style lang="scss" src="./main.scss">
</style>
