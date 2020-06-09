
set -e
 echo "你好"

# # # 生成静态文件
npm run build

# # 进入生成的文件夹
cd docs/.vuepress/dist

# 部署到 github
TOKEN="123456"

 githubUrl=https://sweetwisdom:${TOKEN}@github.com/sweetwisdom/myblog.git

 msg='手动部署于'$(date "+%Y-%m-%d %H:%M:%S")

echo $TOKEN 
sleep 1s
echo $msg
sleep 1s
echo $githubUrl


git init



git config --global user.name "sweetwisdom"

git config --global user.email "sweetwisdom@qq.com"

git add -A


git commit -m "${msg}"

git push -f $githubUrl master:gh-pages # 推送到github