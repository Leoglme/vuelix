---
API:
- name: icon
  type: String
  parameters: null
  description: Determines the icon
  default: null
- name: icon-pack
  type: String
  parameters: null
  description: Determines the icon pack. If not set, icon will default to Material Icons. ex. FA4 uses fa or fas, FA5 uses fas, far, or fal.
  default: material-icons
- name: color
  type: String
  parameters: Vuesax color presets, RGB, HEX, html color presets
  description: Determines the icon pack. If not set, icon will default to Material Icons. ex. FA4 uses fa or fas, FA5 uses fas, far, or fal.
  default: black
- name: bg
  type: String
  parameters: Vuesax color presets, RGB, HEX, html color presets
  description: Sets the background color
  default: null
- name: size
  type: String
  parameters: small, medium, large, custom measure(75px, 3rem, 2em)
  description: Sets the size of the icon
  default: 1rem
- name: round
  type: Boolean
  parameters: null
  description: Makes the background round.
  default: false
- name: click
  type: Function
  parameters: null
  description: a function to be executed on click of the icon
---
# Icons **- new**
<box header>

Guidance and suggestions for using icons with Vuelix.

</box>

<box>

## Material icons
::: warning Note
**Google** has created over 1,700 official **Material Icons**, each in five different "themes" (see below). For each SVG icon, we export the respective React component from the @mui/icons-material package. You can [search the full list of these icons](https://material.io/icons/).
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
npm install vue-material-icon
">
</Demos-DemoBox>

<Demos-DemoBox language="bash" plugins="command-line" code="
yarn add vue-material-icon
">
</Demos-DemoBox>

</box>

<box>

## Usage

Import icons using one of these two options:

- Option 1:

  ```javascript
  import {vxIcon} from 'vuelix';
  ```

- Option 2:

  ```javascript
  import Icon from 'vue-material-icon';
  ```

<vuecode md>
<div slot="demo">
  <Demos-Icon-Default />
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


<box>

## Color

<vuecode md>
<div slot="demo">
  <Demos-Icon-Color />
   <Demos-DemoBox code='
<vx-icon icon="home" :margin="16"/>
<vx-icon icon="home" color="#90caf9" :margin="16"/>
<vx-icon icon="home" color="#ce93d8" :margin="16"/>
<vx-icon icon="home" color="rgb(102, 187, 106)" :margin="16"/>
<vx-icon icon="home" color="rgb(66, 184, 131)" :margin="16"/>
<vx-icon icon="home" color="rgba(66, 184, 131, .3)" :margin="16"/>
<vx-icon icon="home" color="rgb(233, 30, 99)" :margin="16"/>
'></Demos-DemoBox>
</div>
<div slot="code">

```html
<template>
  <div class="container">
    <vx-icon icon="home" :margin="16"/>
    <vx-icon icon="home" color="#90caf9" :margin="16"/>
    <vx-icon icon="home" color="#ce93d8" :margin="16"/>
    <vx-icon icon="home" color="rgb(102, 187, 106)" :margin="16"/>
    <vx-icon icon="home" color="rgb(66, 184, 131)" :margin="16"/>
    <vx-icon icon="home" color="rgba(66, 184, 131, .3)" :margin="16"/>
    <vx-icon icon="home" color="rgb(233, 30, 99)" :margin="16"/>
  </div>
</template>
<script>
  export default {
  }
</script>
<style>
  .container {
    display: flex;
    justify-content: center;
    padding: 24px;
  }
</style>

```


</div>
</vuecode>
</box>
