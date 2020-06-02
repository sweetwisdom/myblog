# #!/usr/bin/env sh

# # 确保脚本抛出遇到的错误
set -e

# # 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist



# deploy to coding
# echo 'sweet.cartoom.club' > CNAME  # 自定义域名
if [ -z "$CODING_TOKEN" ]; then  # -z 字符串 长度为0则为true；$CODING_TOKEN来自于github仓库`Settings/Secrets`设置的私密环境变量
 msg='部署'
  codingUrl=git@e.coding.net:sweetwisdom/coding-demo.git
else
 msg='来自github actions的自动部署 20200602'
  codingUrl=https://ZULMWvoZDe:${CODING_TOKEN}@e.coding.net/sweetwisdom/coding-demo.git
fi
git add -A
git commit -m "${msg}"
git push -f $codingUrl master # 推送到coding

cd - # 退回开始所在目录
rm -rf docs/.vuepress/dist