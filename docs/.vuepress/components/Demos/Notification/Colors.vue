<template>
  <div class="container">
    <vx-button color="dark" @click="clickDefault">Default</vx-button>
    <vx-button color="success" @click="clickSuccess">Success</vx-button>
    <vx-button color="danger" @click="clickError">Error</vx-button>
  </div>
</template>

<script>
export default {
  name: "Colors",
  methods: {
    clickDefault() {
      this.$notification({
        title: "Default Notification",
        message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
      })
    },
    clickSuccess() {
      this.$successNotification({
        title: "Success Notification",
        message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
      })
    },
    clickError() {
      this.$errorNotification({
        title: "Error Notification",
        message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
      })
    }
  },
}
</script>

<style lang="scss" scoped>
.container {
  & button {
    margin: 0 8px;
  }
}
</style>
