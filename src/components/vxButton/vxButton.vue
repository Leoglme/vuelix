<template lang="html">
  <button
      class="vx-button vx-button${type} vx-button-filled"
      :class="[`vx-button-${isColor ? color : null}`,`vx-button-${type}`,{
      'isActive':isActive,
      'includeIcon':icon,
      'includeIconOnly':icon && !$slots.default,
      'vx-radius':radius
    }, size]"
      v-bind="$attrs"
      v-on="$listeners">
    <slot/>
  </button>
</template>
<script>
import _color from '../../utils/color.js';
export default {
  name: "vxButton",
  inheritAttrs: false,
  props: {
    size: {type: String, default: null}, //large or small,
    type: {type: String, default: 'filled'},
    color: {type: String, default: 'primary'},
    gradientColorSecondary: {type: String, default: 'primary'},
    textColor: {type: String, default: null},
    icon: {type: String, default: null},
    button: {type: String, default: 'button'},
    radius: {type: Boolean, default: false},
    linePosition:{type:String, default:'bottom'},
    gradientDirection:{
      default:'30deg',
      type:String
    },
  },
  data: () => ({
    isActive: false,
    hoverx: false,
    leftBackgorund: 20,
    topBackgorund: 20,
    radio: 0,
    time: 0.3,
    timeOpacity: 0.3,
    opacity: 1,
  }),
  computed: {
    styles() {
      if (this.is('filled')) {
        return {
          color: _color.getColor(this.textColor, 1),
          background: _color.getColor(this.color, 1),
          boxShadow: this.hoverx ? `0px 8px 25px -8px ${_color.getColor(this.color, 1)}` : null
        }
      } else if (this.is('border') || this.is('flat')) {
        return {
          border: `${this.is('flat') ? 0 : 1}px solid ${_color.getColor(this.color, 1)}`,
          background: this.hoverx ? _color.getColor(this.color, .1) : 'transparent',
          color: _color.getColor(this.textColor, 1) || _color.getColor(this.color, 1)
        }
      } else if (this.is('line')) {
        return {
          color: _color.getColor(this.textColor, 1) || _color.getColor(this.color, 1),
          borderBottomWidth: this.linePosition === 'bottom' ? `2px` : null,
          borderColor: `${_color.getColor(this.color, .2)}`,
          borderTopWidth: this.linePosition === 'top' ? `2px` : null,
        }
      } else if (this.is('gradient')) {
        let backgroundx = `linear-gradient(${this.gradientDirection}, ${_color.getColor(this.color)} 0%, ${_color.getColor(this.gradientColorSecondary, 1)} 100%)`
        return {
          background: backgroundx,
        }
      } else if (this.is('relief')) {
        let color = _color.getColor(this.color, 1)
        return {
          background: _color.getColor(this.color, 1),
          boxShadow: `0 3px 0 0 ${_color.darken(color, -0.4)}`
        }
      }
    },
    isColor() {
      return _color.isColor(this.color)
    }
  }
}
</script>

<style lang="scss" src="./main.scss" scoped>

</style>
