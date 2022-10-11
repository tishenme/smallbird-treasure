# sh deploy-site.sh

# 生成静态文件
yarn docs:build

# 基本步骤
cd docs/.vuepress/dist
git init
git add -A
git commit -m 'deploy'

# 发布静态文件到 Gitee Page 需要配置好 Gitee SSH 密钥
echo -e "\n###### Deploy Gitee Page ######\n"
git push -f git@gitee.com:tishenme/smallbird-treasure-site.git master:master

# 发布地址 Gitee 需要到去 pages 页面刷新
# https://gitee.com/tishenme/smallbird-treasure-site/pages
# https://gitee.com/tishenme/smallbird-treasure-site
# https://tishenme.gitee.io/smallbird-treasure-site/

# 发布静态文件到 Github Page 需要配置好 Github SSH 密钥
echo -e "\n###### Deploy Github Page ######\n"
git push -f git@github.com:tishenme/smallbird-treasure-site.git master:master

# 发布地址 Github 不需要到去 pages 页面刷新
# https://github.com/tishenme/smallbird-treasure-site/pages
# https://github.com/tishenme/smallbird-treasure-site
# https://tishenme.github.io/smallbird-treasure-site/

# 删除文件
cd ..
rm -rf dist
