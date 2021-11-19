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
  
  Vue.use(vxNotification);
  ```

- Option 2:

  ```javascript
  import vxNotification from 'vue-snackbar';
  
  Vue.use(vxNotification);
  ```
<box>

## Simple notification

A basic notification that aims to reproduce Google Keep's snackbar behavior.

<vuecode md>
<div slot="demo">
  <Demos-Notification-Default />
   <Demos-DemoBox language="javascript" code="
handleClick(){
this.$notification({title: 'my title', message: 'my description'});
}
"></Demos-DemoBox>
</div>
<div slot="code">

```html
<template>
    <vx-button @click="handleCLick">Open simple notification</vx-button>
</template>
<script>
    export default {
        methods: {
            handleCLick() {
                this.$notification({
                    title: "Documentation Vuelix", 
                    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                })
            }
        },
    }
</script>

```


</div>
</vuecode>
</box>

<box>

## Themes
<vuecode md>
<div slot="demo">
  <Demos-Notification-Colors />
   <Demos-DemoBox language="javascript" code="
handleClick(){
this.$notification({title: 'my title', message: 'my description'});
}
"></Demos-DemoBox>
</div>
<div slot="code">

```html
<template>
    <vx-button @click="handleCLick">Open simple notification</vx-button>
</template>
<script>
    export default {
        methods: {
            handleCLick() {
                this.$notification({
                    title: "Documentation Vuelix", 
                    message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                })
            }
        },
    }
</script>

```


</div>
</vuecode>
</box>

</box>
