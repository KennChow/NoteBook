cd /Users/zhouchen/Desktop/学习/笔记/NoteBook
git init 
git add .
curDate=$(date "+%Y%m%d")
git commit -m 'updated@ken@${curDate}'
git push origin main
