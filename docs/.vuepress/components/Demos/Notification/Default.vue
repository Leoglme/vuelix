<template>
  <div class="container">
    <vx-button @click="handleCLick">Open simple notification</vx-button>
  </div>
</template>
<script>
export default {
  methods: {
    handleCLick() {
      this.$notification({title: "Documentation Vuelix", message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."})
    }
  },
}
</script>


<style>
.container {
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 24px;
}
</style>
