# smallbird-treasure

## 项目介绍

小鸟财富 记录前行的脚印

---
本仓库有来源自己总结 网上收集 视频笔记  
如果有侵权之处 可以联系我进行删除  
因个人能力有限 笔记中可能还有很多错误的地方  
也欢迎各位小伙伴能够提交 pull request 请求进行完善
---

## 静态网站

- [小鸟财富-传送门](https://tishenme.gitee.io/smallbird-treasure-site)

## 仓库地址

本仓库同步托管在 Gitee 和 Github 中
- Gitee 仓库：https://gitee.com/tishenme/smallbird-treasure
- Github 仓库：https://github.com/tishenme/smallbird-treasure

## 相关命令
```shell
# 依赖安装
yarn cache clean
yarn --update-checksums
yarn install

# 依赖添加
yarn add -D vuepress@1.9.2
yarn add -D @vuepress/plugin-pwa@1.9.2
yarn add -D @vuepress/plugin-back-to-top@1.9.2

# 依赖升级
yarn upgrade vuepress --latest
yarn upgrade @vuepress/plugin-pwa --latest
yarn upgrade @vuepress/plugin-back-to-top --latest

# 生成静态文件
yarn docs:build
```