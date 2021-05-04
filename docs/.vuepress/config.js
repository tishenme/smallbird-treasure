module.exports = {
    base: '/smallbird-treasure-site/',
    title: 'Smallbird-Treasure',
    description: '小鸟财富 记录前行的脚印',
    head: [
        ['link', { rel: 'icon', href: '/favicon.ico' }],
        ['link', { rel: 'manifest', href: '/manifest.json' }],
        ['meta', { name: 'theme-color', content: '#3eaf7c' }],
        ['meta', { name: 'apple-mobile-web-app-capable', content: 'yes' }],
        ['meta', { name: 'apple-mobile-web-app-status-bar-style', content: 'black' }],
        ['link', { rel: 'apple-touch-icon', href: '/icons/apple-touch-icon-128x128.png' }],
        ['link', { rel: 'mask-icon', href: '/icons/safari-pinned-tab.svg', color: '#3eaf7c' }],
        ['meta', { name: 'msapplication-TileImage', content: '/icons/android-chrome-128x128.png' }],
        ['meta', { name: 'msapplication-TileColor', content: '#000000' }]
    ],
    markdown: {
        lineNumbers: true
    },
    plugins: [
        '@vuepress/pwa', {
            serviceWorker: true,
            updatePopup: true
        },
        '@vuepress/back-to-top',
        '@vuepress/last-updated'
    ],
    themeConfig: {
        logo: '/icons/android-chrome-128x128.png',
        nav: [
            { text: 'Home', link: '/' },
            { text: 'Guide', link: '/guide/' },
            {
                text: '笔记仓库', items: [
                    { text: 'Gitee 仓库', link: 'https://gitee.com/tishenme/smallbird-treasure' },
                    { text: 'Github 仓库', link: 'https://github.com/tishenme/smallbird-treasure' }
                ]
            }
        ],
        search: true,
        searchMaxSuggestions: 10,
        lastUpdated: '修改时间',
        // sidebar: 'auto',
        sidebarDepth: 1,
        displayAllHeaders: true,
        activeHeaderLinks: true,
        // 自定义侧边栏
        sidebar: [
            {
                path: '/',
                title: 'Home',
                collapsable: false
            },
            {
                path: '/guide/',
                title: 'Guide',
                collapsable: false
            },
            {
                path: '/content-001-Soft/',
                title: '软件仓库',
                collapsable: false,
                children: [
                    {
                        path: '/content-001-Soft/title-001-Window/',
                        title: 'Window',
                        children: [
                            { path: '/content-001-Soft/title-001-Window/record-001', title: '装机必备' },
                            { path: '/content-001-Soft/title-001-Window/record-002', title: '开发工具' }
                        ]
                    }
                ]
            },
            {
                path: '/content-002-Seek/',
                title: '学习探索',
                collapsable: false,
                children: [
                    {
                        path: '/content-002-Seek/title-001-Markdown/',
                        title: 'Markdown',
                        children: [
                            { path: '/content-002-Seek/title-001-Markdown/record-001', title: '基本语法' },
                            { path: '/content-002-Seek/title-001-Markdown/record-002', title: '进阶使用' }
                        ]
                    }
                ]
            }
        ]
    }
}