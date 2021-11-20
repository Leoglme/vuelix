<template>
  <header class="navbar">
    <SidebarButton @toggle-sidebar="$emit('toggle-sidebar')"/>
    <div class="con-btns-header">
      <router-link :to="$localePath" class="home-link">
        <div class="logo_container">
          <img class="logo"
               v-if="$site.themeConfig.logo"
               :src="$withBase($site.themeConfig.logo)">
        </div>
        <span class="site-name"
              v-if="$siteTitle"
              :class="{ 'can-hide': $site.themeConfig.logo }">
          <!-- {{ $siteTitle }} -->
        </span>
      </router-link>
      <div :class="{'linksColor':!$page.frontmatter.home}" class="links">
        <NavLinks class="can-hide"/>
      </div>
    </div>

    <div class="con-redes-download">
      <SearchBox/>
      <a
          title="Github"
          v-if="repoLink"
          :href="repoLink"
          class="repo-link flaticon-github"
          target="_blank"
          rel="noopener noreferrer">
      </a>
      <a target="_blank" title="@vuelix" href="https://twitter.com/vuelix">
        <vx-icon class="flaticon-twitter twitterx" icon=""></vx-icon>
      </a>

      <a href="https://github.com/Leoglme/vuelix/archive/refs/heads/master.zip" class="btn-download">
        <vx-icon class="" icon="get_app"></vx-icon>
        <span>Download</span>
      </a>
    </div>

  </header>
</template>

<script>
import SidebarButton from './SidebarButton.vue'
import SearchBox from './SearchBox.vue'
import NavLinks from './NavLinks.vue'

export default {
  components: {SidebarButton, NavLinks, SearchBox},
  data() {
    return {
      color: '#008afb',
      shadow: false,
    }
  },
  computed: {
    repoLink() {
      const {repo} = this.$site.themeConfig
      if (repo) {
        return /^https?:/.test(repo)
            ? repo
            : `https://github.com/${repo}`
      }
    },
    algolia() {
      return this.$themeLocaleConfig.algolia || this.$site.themeConfig.algolia || {}
    },
    isAlgoliaSearch() {
      return this.algolia && this.algolia.apiKey && this.algolia.indexName
    }
  },
  mounted() {
    if (this.$page.frontmatter.home) {
      window.addEventListener('scroll', (e) => {
        if (e.target.scrollingElement.scrollTop > 350) {
          this.shadow = true
        } else {
          this.shadow = false
        }
      })
    } else {
      this.shadow = true
    }

  },
  methods: {
    changeColor(colorx) {
      this.$vs.theme({
        primary: colorx // myColorNew
      })
    }
  }
}
</script>

<style lang="scss">
@import './styles/config';

.st0 {
  fill: #5b5777;
}

.con-redes-download {
  display: flex;
  align-items: center;
  justify-content: center;

  .twitterx {
    &:before {
      font-size: 1.2rem !important;
    }
  }

  .repo-link {
    &:before {
      font-size: 1.2rem !important;
    }
  }

  a {
    display: flex !important;
    align-items: center;
    justify-content: center;
    padding: 0px 4px;
    transition: all 0.25s ease;
    color: #5b5777;

    &:hover {
      color: $accentColor !important;

      .st0 {
        fill: $accentColor !important;
      }
    }
  }

  .btn-download {
    padding: 12px 10px;
    font-size: 0.8rem;
    display: flex;
    align-items: center;
    justify-content: center;
    border-left: 1px solid rgba(0, 0, 0, 0.05);
    border-right: 1px solid rgba(0, 0, 0, 0.05);
    margin-left: 5px;
    cursor: pointer;

    span {
      margin-left: 5px;
    }
  }
}

.con-inputx-c {
  overflow: hidden;
  display: inline-block;
  position: relative;
  border-radius: 50%;
  width: 24px;
  height: 24px;
  box-shadow: 0px 0px;
}

.con-colors-input {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-left: 10px;

  input {
    border: 0px;
    background: transparent;
    position: absolute;
    width: 100%;
    height: 100%;
    opacity: 0;
  }
}

.shadow {
  box-shadow: 0px 0px 15px 0px rgba(0, 0, 0, 0.04) !important;
}

.logo {
  transition: all 0.3s ease;
}

.visible {
  opacity: 1;
  transform: translate(0);
}

.navbar {
  height: 3rem !important;
  line-height: $navbarHeight -1.5rem;
  background: $background;
  z-index: 1200 !important;
  box-shadow: inset 0px -1px 1px #EAEEF3;
  position: fixed;
  width: calc(100% + 7px);
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0.4rem 1rem 0.4rem 3rem;

  i {
    font-size: 1rem;
  }

  .home-link {
    margin-left: 2.5rem;
    margin-right: 3.5rem;
  }

  .con-btns-header {
    display: flex;
    align-items: center;
  }

  .logo {
    width: 40px;
    height: 40px;
    vertical-align: top;
  }

  .site-name {
    font-size: 1.3rem;
    display: none;
    font-weight: 600;
    color: $textColor;
    position: relative;
  }

  .links {
    font-size: 0.9rem;
    position: relative;
    top: 0rem;
    transition: all 0.2s ease;
  }

  .can-hide {
    display: none;
  }
}

@media (max-width: $MQMobile) {
  .links {
    line-height: 48px;
  }
}

</style>
