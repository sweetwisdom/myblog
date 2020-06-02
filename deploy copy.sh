#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

cd zc


git init
git config --global user.name "sweetwisdom"
git config --global user.email "sweetwisdom@qq.com"
git add -A
git commit -m "test"
# git push -f $githubUrl master:gh-pages # 推送到github

# deploy to coding
# echo 'www.xugaoyi.com\nxugaoyi.com' > CNAME  # 自定义域名

git push -f git@nodeing666:sweetwisdom/myblog.git master # 推送到coding

cd - # 退回开始所在目录
