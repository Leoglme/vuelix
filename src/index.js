import * as vxComponents from './components'
import './style/vuelix.scss'

const install = (Vue) => {
  // Use Components
  Object.values(vxComponents).forEach((vxComponents) => {
    Vue.use(vxComponents)
  })
}

if (typeof window !== 'undefined' && window.Vue) {
  install(window.Vue)
}

export default install

export {default as vsButton} from './components/vxButton'
//New Component import
