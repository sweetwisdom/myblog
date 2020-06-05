#!/usr/bin/env sh

# 确保脚本抛出遇到的错误 部署到码云

# 需要进行如下修改 dist 目录
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd myblog

# # deploy to github
# echo 'sweet.cartoom.club' > CNAME
# if [ -z "$GITHUB_TOKEN" ]; then
#   msg='deploy'
#   githubUrl=git@github.com:xugaoyi/vuepress-theme-vdoing.git
# else
#   msg='来自github actions的自动部署'
#   githubUrl=https://xugaoyi:${GITHUB_TOKEN}@github.com/xugaoyi/vuepress-theme-vdoing.git
#   git config --global user.name "xugaoyi"
#   git config --global user.email "894072666@qq.com"
# fi
 msg='手动部署于'$(date "+%Y-%m-%d %H:%M:%S")

git init
git checkout -b myblog


git config --global user.name "sweetwisdom"

git config --global user.email "sweetwisdom@qq.com"

git add -A


git commit -m "${msg}"



git remote add origin https://gitee.com/sweetwisdom/myblog.git

# git push -f $githubUrl master:gh-pages # 推送到github

# deploy to coding
# echo 'www.xugaoyi.com\nxugaoyi.com' > CNAME  # 自定义域名




echo "正在部署"

git push origin myblog -f



cd - 
 echo '即将删除文件'$(date "+%Y-%m-%d %H:%M:%S")
 
rm -rf myblog