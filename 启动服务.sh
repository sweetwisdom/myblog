set -e

# cd D:/data/文档/章程/myblog

#  code .

# 移除github

git remote remove origin

#  添加码云



msg='手动更新码云于'$(date "+%Y-%m-%d %H:%M:%S")







git config --global user.name "sweetwisdom"

git config --global user.email "sweetwisdom@qq.com"

git add -A


git commit -m "${msg}"



git remote add origin https://gitee.com/sweetwisdom/myblog.git

# git push -f $githubUrl master:gh-pages # 推送到github

# deploy to coding
# echo 'www.xugaoyi.com\nxugaoyi.com' > CNAME  # 自定义域名




echo "正在部署"

git push origin master -f



git remote remove origin

git remote add origin https://github.com/sweetwisdom/myblog.git


echo "地址已经还原为github https://github.com/sweetwisdom/myblog.git "
echo '正在进行打包发布到码云'



