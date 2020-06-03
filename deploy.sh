#!/usr/bin/env sh

# # 确保脚本抛出遇到的错误
set -e
 echo "你好"

# # 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

 echo "正在部署"

# deploy to coding
# echo 'sweet.cartoom.club' > CNAME  # 自定义域名
if [ -z "$CODING_TOKEN" ]; then  # -z 字符串 长度为0则为true；$CODING_TOKEN来自于github仓库`Settings/Secrets`设置的私密环境变量

 msg='手动部署于'$(date "+%Y-%m-%d %H:%M:%S")
   echo $msg
  codingUrl=git@e.coding.net:sweetwisdom/coding-demo.git
else


 msg='来自github actions的自动部署于'$(date "+%Y-%m-%d %H:%M:%S")
  codingUrl=https://ZULMWvoZDe:${CODING_TOKEN}@e.coding.net/sweetwisdom/coding-demo.git

    echo "正在最后部署"
  

fi
git init
git config --global user.name "sweetwisdom"
git config --global user.email "sweetwisdom@qq.com"
  echo 'git'
git add -A
git commit -m "${msg}"
  echo '正在自动部署'$(date "+%Y-%m-%d %H:%M:%S")
git push -f $codingUrl master # 推送到coding

cd - # 退回开始所在目录
rm -rf docs/.vuepress/dist