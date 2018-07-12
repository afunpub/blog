hexo generate
hexo d
cd .deploy_git/
git add .
git commit -m "update"
git push -u origin master -f
cd ..