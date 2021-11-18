<p align="center">
  <a href="https://vuelix.com/" rel="noopener" target="_blank"><img width="150" src="https://raw.githubusercontent.com/leoglme/vuelix/master/docs/.vuepress/public/png/vuelix.png" alt="Vuelix logo"></a>
</p>

<h1 align="center">Vuelix</h1>

<div align="center">
Quickly build beautiful <a href="https://vuejs.org/" style="color: #41B883">Vue</a> apps. Vuex is a simple and customizable component library to build faster, 
beautiful, and more accessible Vue applications. Follow your own design system.
<hr/>

<p align="center">
  <a href="https://travis-ci.org/lusaxweb/vuelix">
    <img src="https://img.shields.io/travis/leoglme/vuelix.svg" alt="travis ci badge">
  </a>
  <a href="https://www.npmjs.com/package/vuelix">
    <img src="https://img.shields.io/npm/dt/vuelix.svg" alt="Downloads">
  </a>
  <a href="https://www.npmjs.com/package/vuelix">
    <img src="https://img.shields.io/npm/v/vuelix.svg" alt="Version">
  </a>
  <a href="https://www.npmjs.com/package/vuesax"><img src="https://img.shields.io/npm/l/vuesax.svg" /></a>
</p>

<a href="https://vuelix.com/" rel="noopener" target="_blank">
<img width="90%" src="https://cdn.dribbble.com/users/1979461/screenshots/6017458/media/7e287af3b7456b821bc27f6c15898bad.gif" alt="vuelix" />
</a>

</div>

## Installation

MUI is available as an [npm package](https://www.npmjs.com/package/vuelix).

```sh
// with npm
npm install vuelix

// with yarn
yarn add vuelix
```

## Links

- 📘 [Documentation](https://vuelix.com/)

## Usage

Here is a quick example to get you started, **it's all you need**:

```vue

<template>
  <vx-button>Hello World</vx-button>
</template>

<script>
import {vxButton} from 'vuelix';

export default {
  components: {vxButton}
}
</script>
```

## Browser Support

Recent versions of **Firefox**, **Chrome**, **Edge**, **Opera** and **Safari**. **IE11+**

### All components

```javascript
import Vue from 'vue'
import Vuelix from 'vuelix'

import 'vuelix/dist/vuelix.css'

Vue.use(Vuelix)
```

### Or use individual components:

```javascript
import Vue from 'vue'
import {vxButton, vxIcon} from 'vuelix'
import 'vuelix/dist/vuelix.css'

Vue.use(vxButton)
Vue.use(vxIcon)
```

## Components

- [Icons](https://vuelix.com/components/icon.html)

## Author

This library was created and is supported by [Dibodev](http://dibodev.com/)

## License

[MIT](https://raw.githubusercontent.com/lusaxweb/vuesax/master/LICENSE)
