# sh deploy-git-update.sh

# 提交代码
git add .
git commit -m "tishen update content about format content"

# SSH 创建
# cd ~
# ssh-keygen -t rsa -C "tishenme@163.com"

# 需要配置好 Gitee SSH 密钥
echo -e "\n###### Push Gitee ######\n"
git push git@gitee.com:tishenme/smallbird-treasure.git master:master

# 需要配置好 Github SSH 密钥
echo -e "\n###### Push Github ######\n"
git push git@github.com:tishenme/smallbird-treasure.git master:master