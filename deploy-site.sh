# sh deploy-site.sh

# 生成静态文件
# npm run docs:build
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

# https://gitee.com/tishenme/smallbird-treasure-site
# https://gitee.com/tishenme/smallbird-treasure-site/pages