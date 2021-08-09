## git命令
///从Linux输入的字哈哈哈哈
///从terminus书的字嘻嘻嘻
初始化仓库

```
git init
```

从工作区到暂存区： 

~~~
git add xx.xx
git status
~~~

从暂存区到仓库： 

```
git commit -m "提交描述"
git status
```



基本信息设置

```
设置用户名
git config --global user.name 'KennChow'
设置用户邮箱
git config --global user.email '970767302@qq.com'
查看用户信息
git config --list

创建一个文件夹
mkdir test
进入test文件夹
cd test
删除文件
rm test.php
从git删除文件
git rm test.php
提交操作
git commit -m '提交描述'
提交到远程仓库
git push
将远程仓库复制到本地
git clone url
选择21.php
touch 21.php

```

本地同步到远程：

```
git init
//将远程仓库的拉到本地合并
git pull --rebase origin main
//上传
git add .
git commit -m '描述'
git push origin main
```

