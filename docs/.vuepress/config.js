
module.exports = {
  base: '/',
  head: [
    ['link', { rel: 'icon', href: `/icon/favicon.ico` }]
  ],
  ga:'UA-160622657-1',
  docsDir: 'docs',
  host:'localhost',
  port: 3000,
  title: 'Vue.js Framework Components - Vuelix',
  description: 'We love what we do. Let us help you do what <b>You love.</b>',
  vueThemes:{
    linksHome:[],
    links:{
      github:'https://github.com/leoglme/vuelix',
    },
    footer:[
      {
        title:'Social',
        items:[
          {
            text:'GitHub',
            link:'https://github.com/leoglme/vuelix'
          },
          {
            text:'Twitter',
            link:'https://twitter.com/dibodev'
          },
        ]
      },
      {
        title:'Help',
        items:[
          {
            text:'Issues',
            link:'https://github.com/leoglme/vuelix/issues'
          },
          {
            text:'Edit Page',
            link:'https://github.com/leoglme/vuelix/tree/master/docs'
          },
          {
            text:'Latest Releases',
            link:'https://github.com/leoglme/vuelix/releases'
          },
          {
            text:'FAQ',
            link:'https://github.com/leoglme/vuelix/wiki'
          },
        ]
      },
      {
        title:'More',
        items:[
          {
            text:'Dibodev',
            link:'https://dibodev.com/'
          },
          {
            text:'Email',
            link:'mailto:contact@vuelix.com'
          },
          {
            text:'Pull request',
            link:'https://github.com/leoglme/vuelix/pulls'
          },
        ]
      }
    ]
  },
  themeConfig: {
    // Assumes GitHub. Can also be a full GitLab url.
    repo: 'leoglme/vuelix',
    repoLabel: 'Contribute!',
    // Optional options for generating "Edit this page" link
    // if your docs are in a different repo from your main project:
    docsRepo: 'leoglme/vuelix',
    // if your docs are not at the root of the repo:
    docsDir: 'docs',
    // if your docs are in a specific branch (defaults to 'master'):
    docsBranch: 'master',
    // defaults to true, set to false to disable
    editLinks: true,
    // custom text for edit link. Defaults to "Edit this page"
    logo:'/svg/vuelix.svg',
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Documentation', link: '/development/' },
      {
        text: 'Ecosystem',
        items: [
          {
            text: 'Social',
            items: [
              { text: 'GitHub', link: 'https://github.com/leoglme/vuelix' },
              { text: 'Twitter', link: 'https://twitter.com/dibodev' }
            ]
          },
          {
            text: 'Help',
            items: [
              { text: 'Issues', link: 'https://github.com/leoglme/vuelix/issues' },
              { text: 'Edit Page', link: 'https://github.com/leoglme/vuelix' },
              { text: 'Latest Releases', link: 'https://github.com/leoglme/vuelix/releases' },
            ]
          },
          {
            text: 'Contact',
            items: [
              { text: 'Dibodev', link: 'https://dibodev.com' },
              { text: 'Email', link: 'mailto:contact@vuelix.com' }
            ]
          }
        ]
      },
    ],
    sidebar: [
      {
        title: 'Development',
        collapsable: false,
        children: [
          '/development/',
          '/development/whyVuelix',
         ]
      },
      {
        title: 'Theme',
        collapsable: false,
        children: [
          '/theme/',
          '/theme/icon'
         ]
      },
      {
        title: 'Components',
        collapsable: false,
        children: [
          '/components/icon',
          '/components/button',
          '/components/notification',
          /*New Component*/
        ]
      },
    ]
  }
}
