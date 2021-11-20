<template>
  <div class="notiads">
    <div class="noti">

    </div>
    <Carbon ref="carbon" />
  </div>
</template>
<script>
import Carbon from "./Carbon";
import Codefund from "./CodeFund.vue";
export default {
  components: {
    Carbon,
    Codefund
  },
  data: () => ({
    ramdom: 1
  }),
  computed: {
    titlex () {
      let titlex = 'Coffe'
      if (this.ramdom === 2) {
        titlex = 'Pizza'
      } else if (this.ramdom === 3) {
        titlex = 'Bronze'
      } else if (this.ramdom === 4) {
        titlex = 'Silver'
      } else if (this.ramdom === 5) {
        titlex = 'Gold'
      } else if (this.ramdom === 6) {
        titlex = 'Diamond'
      } else if (this.ramdom === 7) {
        titlex = 'Special'
      }
      return titlex
    }
  },
  watch: {
    '$route' (to, from) {
      if (
        to.path !== from.path
      ) {
        this.$refs.carbon.clean()
        this.ads = 'carbon'
        this.$refs.carbon.load()
        this.$refs.carbon.$el.classList.remove('hidden')
      }
    }
  },
  mounted () {
    this.$refs.carbon.clean()
    this.ads = 'carbon'
    this.$refs.carbon.load()
    this.$refs.carbon.$el.classList.remove('hidden')
    this.ramdom = this.numeroAleatorio(1, 7)
  },
  updated () {
    this.ramdom = this.numeroAleatorio(1, 7)
  },
  methods: {
    numeroAleatorio (min, max) {
      return Math.round(Math.random() * (max - min) + min)
    }
  }
}
</script>
<style lang="stylus">
@import './styles/config.styl'
.notiads
  background rgb(255,255,255)
  height 100%
  position absolute
  left 0px
  top 0px
  width 100%
  display flex
  flex-direction column
  box-shadow -4px 4px 10px 0px rgba(0,0,0,.02)
  .btn-patreon
    padding 4px
    padding-left 6px
    padding-right 6px;
    border 1px solid rgb(249, 104, 84)
    color $accentColor
    background transparent
    margin-top 15px;
    border-radius 5px;
    cursor pointer
    transition all .2s ease
    background rgb(249, 104, 84)
    color rgb(255,255,255)
    display flex
    align-items center
    justify-content center
    text-transform uppercase
    font-size 10px
    font-weight bold
    &:hover
      box-shadow: 0px 9px 28px -9px rgb(249, 104, 84)
    img
      margin-right 5px
  .noti
    flex-grow: 1 !important
  .sponsor-special
    width 100%
    display flex
    align-items center
    justify-content center
    padding 20px 0px
    flex-direction column
    h4
      padding-bottom 10px
    .sponsor-s
      a
        color rgba(0,0,0,.1)
        width 120px
        height 120px
        border-radius 10px
        border 1px dashed #dcdcdc
        display flex
        align-items center
        justify-content center
        transition all .3s ease
        &:hover
          color #f96854 !important
          border 1px dashed #f96854
          // background alpha(#f96854, .1)
          box-shadow 0px 5px 10px 0px alpha(#f96854, .13)
          transform translate(0, -4px)
        img
          width 100%
</style>
