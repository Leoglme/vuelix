<template>
  <div class="container">
    <div class="row" v-for="theme in themes">
      <p class="icon_label">{{ theme }}</p>
      <vx-icon icon="delete" :themes="theme"/>
      <vx-icon icon="delete_forever" :themes="theme"/>
    </div>
  </div>
</template>
<script>
export default {
  data () {
    return {
      themes: ['filled', 'outlined', 'rounded', 'sharp', 'two-tone']
    }
  }
}
</script>
<style scoped>
 .container {
   display: flex;
   justify-content: flex-start;
   padding: 24px;
   flex-direction: column;
 }
 .icon_label {
   font-size: 1rem;
   line-height: 1.5;
   letter-spacing: 0.00938em;
   text-transform: capitalize;
 }

 .row {
   display: flex;
   align-items: center;
   justify-content: center;
   width: 40%;
 }
</style>
