# Guide

## 技术介绍

使用 vuepress 搭建  
使用 Gitee Page 免费发布

::: tip
拿来主义 [SmallBird-Treasure](https://gitee.com/tishenme/smallbird-treasure)
:::

## 使用教程

> 相关网站
> * [vuepress github](https://github.com/vuejs/vuepress)
> * [vuepress document](https://vuepress.vuejs.org/zh/)

::: tip
建议大家先根据官方教程做一个实例学习一下  
就可以很快上手本项目并修改为自己项目
:::

#### 复制项目

```
# 克隆命令
git clone https://gitee.com/tishenme/smallbird-treasure.git
```

#### 目录介绍

```
samllbird-treasure
 ├── .gitignore                                         # Git 提交忽略配置
 ├── LICENSE                                            # 证书文件
 ├── README.md                                          # 项目介绍
 ├── package.json                                       # node package 管理
 ├── yarn.lock                                          # yarn 日志文件
 ├── deploy-git-force.sh                                # 代码提交脚本
 ├── deploy-git-modify.sh                               # 代码提交脚本
 ├── deploy-site.sh                                     # 代码部署脚本
 ├── docs                                               # 网站配置
    ├── .vuepress
        ├── public
            ├── icons
                ├── android-chrome-128x128.png
                ├── apple-touch-icon-128x128.png
                ├── safari-pinned-tab.svg
            ├── favicon.ico
            ├── manifest.json
        ├── config.js                                   # 主要配置文件
    ├── guide
        ├── README.md
    └── README.md
```

#### 修改项目

 ```
# 推荐在 Gitee 创建仓库 因为 Gitee Page 国内更加流畅
# 需要新建好你自己的2个仓库 例如 
# 代码仓库 xxxxxx 
# 部署仓库 xxxxxx-site
# 删除之前项目的 .git 文件夹
# 修改相关配置和脚本文件 更换为你的项目名称 部署即可
```

#### 部署项目

```
# 进入项目根目录下 空白处右键选择使用 Git Bash 工具执行下面命令即可
# 部署命令 
sh deploy-site.sh
```