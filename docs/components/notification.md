---
API:
 - name: message
   type: String | Html
   parameters: null
   description: notification message.
   default: null
---
# Notification **- new**
<box header>

Snackbars provide brief notifications. The component is also known as a toast.
::: warning Note
Snackbars inform users of a process that an app has performed or will perform. They appear temporarily, towards the bottom of the screen. They shouldn't interrupt the user experience, and they don't require user input to disappear.

Snackbars contain a single line of text directly related to the operation performed. They may contain a text action, but no icons. You can use them to display notifications.
:::

</box>

<box>

## Installation
Install the package in your project directory with:


<Demos-DemoBox language="bash" plugins="command-line" code="
npm install vuelix
">
</Demos-DemoBox>

<Demos-DemoBox language="bash" plugins="command-line" code="
yarn add vuelix
">
</Demos-DemoBox>

Install the package in your project directory with:

<Demos-DemoBox language="bash" plugins="command-line" code="
npm install vue-snackbar
">
</Demos-DemoBox>

<Demos-DemoBox language="bash" plugins="command-line" code="
yarn add vue-snackbar
">
</Demos-DemoBox>

</box>

<box>

## Usage

Import icons using one of these two options:

- Option 1:

  ```javascript
  import {vxNotification} from 'vuelix';
  ```

- Option 2:

  ```javascript
  import vxNotification from 'vue-snackbar';
  ```

<vuecode md>
<div slot="demo">
  <Demos-Notification-Default />
</div>
<div slot="code">

```html
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

```


</div>
</vuecode>
</box>
