# sh deploy-site.sh

# 依赖安装
# yarn cache clean
# yarn --update-checksums
# yarn install

# 依赖添加
# yarn add -D vuepress@1.9.2
# yarn add -D @vuepress/plugin-pwa@1.9.2
# yarn add -D @vuepress/plugin-back-to-top@1.9.2

# 依赖升级
# yarn upgrade vuepress --latest
# yarn upgrade @vuepress/plugin-pwa --latest
# yarn upgrade @vuepress/plugin-back-to-top --latest

# 生成静态文件
yarn docs:build

# 发布静态文件到 Gitee Page 需要配置好 Gitee SSH 密钥
echo -e "\n###### Deploy Gitee Page ######\n"
cd docs/.vuepress/dist
git init
git add -A
git commit -m 'deploy'
git push -f git@gitee.com:tishenme/smallbird-treasure-site.git master:master
cd ..
rm -rf dist

# 发布地址
# https://gitee.com/tishenme/smallbird-treasure-site
# https://gitee.com/tishenme/smallbird-treasure-site/pages