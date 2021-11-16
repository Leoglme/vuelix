
module.exports = {
  base: '/',
  head: [
    ['link', { rel: 'icon', href: `/vue.png` }],
    ['link', { rel: 'stylesheet', href: `https://fonts.googleapis.com/icon?family=Material+Icons` }],
  ],
  ga:'UA-122319353-1',
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
          {
            text:'Facebook',
            link:'https://www.facebook.com/vuesax/'
          },
          {
            text:'Behance',
            link:'https://www.behance.net/ManuelRovira'
          },
          {
            text:'Dribbble',
            link:'https://dribbble.com/ManuelRovira'
          },
          {
            text:'Codepen',
            link:'https://codepen.io/lusaxweb/'
          },
        ]
      },
      {
        title:'Help',
        items:[
          {
            text:'Issues',
            link:'https://github.com/lusaxweb/vuesax/issues'
          },
          {
            text:'Edit Page',
            link:'https://github.com/lusaxweb/vuesax/tree/master/docs'
          },
          {
            text:'Latest Releases',
            link:'https://github.com/lusaxweb/vuesax/releases'
          },
          {
            text:'Stackoverflow',
            link:'https://stackoverflow.com/questions/tagged/vuesax'
          },
          {
            text:'FAQ',
            link:'https://github.com/lusaxweb/vuesax/wiki'
          },
        ]
      },
      {
        title:'More',
        items:[
          { text: 'Blog', link: 'https://lusaxweb.github.io/vuesax-blog/' },
          {
            text:'Lusaxweb',
            link:'http://lusaxweb.net/'
          },
          {
            text:'Email',
            link:'mailto:vuesax@gmail.com'
          },
          {
            text:'Pull request',
            link:'https://github.com/lusaxweb/vuesax/pulls'
          },
          {
            text:'Codepen Template',
            link:'https://codepen.io/lusaxweb/pen/mxMKYr'
          },
        ]
      }
    ]
  },
  themeConfig: {
    // Assumes GitHub. Can also be a full GitLab url.
    repo: 'leoglme/vuelix',
    // Customising the header label
    // Defaults to "GitHub"/"GitLab"/"Bitbucket" depending on `themeConfig.repo`
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
    logo:'/Logo-Vuejs.png',
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Documentation', link: '/development/' },
      {
        text: 'Ecosystem',
        items: [
          {
            text: 'Social',
            items: [
              { text: 'GitHub', link: 'https://github.com/lusaxweb/vuesax' },
              { text: 'Discord', link: 'https://discord.gg/6AZNXEa' },
              { text: 'Twitter', link: 'https://twitter.com/vuesax' },
              { text: 'Facebook', link: 'https://www.facebook.com/vuesax/' },
              { text: 'Behance', link: 'https://www.behance.net/ManuelRovira' },
              { text: 'Dribbble', link: 'https://dribbble.com/ManuelRovira' },
              { text: 'Codepen', link: 'https://codepen.io/lusaxweb/' },
              { text: 'Medium', link: 'https://medium.com/@luisdanielrovira8' }
            ]
          },
          {
            text: 'Help',
            items: [
              { text: 'Issues', link: 'https://github.com/lusaxweb/vuesax/issues' },
              { text: 'Edit Page', link: 'https://github.com/lusaxweb/vuesax' },
              { text: 'Latest Releases', link: 'https://github.com/lusaxweb/vuesax/releases' },
            ]
          },
          {
            text: 'Contact',
            items: [
              { text: 'Lusaxweb', link: 'http://lusaxweb.net' },
              { text: 'Email', link: 'mailto:vuesax@gmail.com' },
              { text: 'Pull Request', link: 'https://github.com/lusaxweb/vuesax/pulls' },
              { text: 'Codepen Template', link: 'https://codepen.io/lusaxweb/pen/mxMKYr' }
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
          '/development/whyVuesax',
         ]
      },
      {
        title: 'Layout',
        collapsable: false,
        children: [
          '/layout/',
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
          '/components/alert',
          '/components/Icon',
          '/components/modal',
          /*New Component*/
        ]
      },
    ]
  }
}
