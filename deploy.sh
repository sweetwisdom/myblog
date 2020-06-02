#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd zc

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
git init
git config --global user.name "sweetwisdom"
git config --global user.email "sweetwisdom@qq.com"
git add -A
git commit -m "20200531更新"
# git push -f $githubUrl master:gh-pages # 推送到github

# deploy to coding
# echo 'www.xugaoyi.com\nxugaoyi.com' > CNAME  # 自定义域名

git push -f git@nodeing666:sweetwisdom/myblog.git master # 推送到coding

cd - # 退回开始所在目录
