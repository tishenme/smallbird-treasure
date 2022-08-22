# sh deploy-git-init.sh

# 删除 Git 记录
rm -rf .git

# 初始化 Git 并提交
git init
git add -A
git commit -m 'deploy'

# 提交代码

# 需要配置好 Gitee SSH 密钥
echo -e "\n###### Push Gitee ######\n"
git push -f git@gitee.com:tishenme/smallbird-treasure.git master:master

# 需要配置好 Github SSH 密钥
echo -e "\n###### Push Github ######\n"
git push -f git@github.com:tishenme/smallbird-treasure.git master:master