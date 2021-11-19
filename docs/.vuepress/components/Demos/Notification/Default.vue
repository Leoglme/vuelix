<template lang="html">
  <div>
    <vx-button @click="handleDefault">Default</vx-button>
    <vx-button
        danger
        flat
        @click="handleDefault">
      Default
    </vx-button>
  </div>
</template>
<script>
export default {
  methods: {
    handleDefault(){
      this.$toasted.global.default({
        message: `
          <div style="display: flex; flex-direction: column">
            <h4 class="toasted-title">Documentation Vuelix</h4>
         <p class="toasted-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    </div>`
      });
    }
  },
}
</script>
