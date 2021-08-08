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

```java

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test
$ git init
Initialized empty Git repository in C:/Users/lenovo/Desktop/test/.git/

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ pwd
/c/Users/lenovo/Desktop/test

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ ls -a
./  ../  .git/

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ touch 1.txt

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ git add 1.txt

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ git commit -m 'first test'
[master (root-commit) 2b6c53a] first test
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 1.txt

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ git remote add origin https://github.com/KennChow/test.git

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ git push -u origin master
fatal: TaskCanceledException encountered.
   ▒▒ȡ▒▒һ▒▒▒▒▒▒
Username for 'https://github.com': KennChow
Counting objects: 3, done.
Writing objects: 100% (3/3), 205 bytes | 68.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0)
remote:
remote: Create a pull request for 'master' on GitHub by visiting:
remote:      https://github.com/KennChow/test/pull/new/master
remote:
To https://github.com/KennChow/test.git
 * [new branch]      master -> master
Branch 'master' set up to track remote branch 'master' from 'origin'.

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ vi 1.txt

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ git add 1.txt
warning: LF will be replaced by CRLF in 1.txt.
The file will have its original line endings in your working directory.

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ git commit -m 'have modified'
[master a5392c2] have modified
 1 file changed, 2 insertions(+)

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ git push -u origin master  //错误原因：本地仓库不是最新 方案：先把远程的pull回来，然后修改
fatal: TaskCanceledException encountered.
   ▒▒ȡ▒▒һ▒▒▒▒▒▒
Username for 'https://github.com': KennChow
To https://github.com/KennChow/test.git
 ! [rejected]        master -> master (fetch first)
error: failed to push some refs to 'https://github.com/KennChow/test.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ git remote -v
origin  https://github.com/KennChow/test.git (fetch)
origin  https://github.com/KennChow/test.git (push)

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ git pull origin master  //错因：这样pull回来的和本地的实际是两个仓库
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
From https://github.com/KennChow/test
 * branch            master     -> FETCH_HEAD
 + 2b6c53a...d439e29 master     -> origin/master  (forced update)
fatal: refusing to merge unrelated histories

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ git pull origin master --allow-unrelated-histories  //解决方案如下
From https://github.com/KennChow/test
 * branch            master     -> FETCH_HEAD
Merge made by the 'recursive' strategy.
 README.md | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 README.md

lenovo@DESKTOP-U22UGV1 MINGW64 ~/Desktop/test (master)
$ git push origin master:master
Logon failed, use ctrl+c to cancel basic credential prompt.
Username for 'https://github.com': KennChow
Counting objects: 8, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (4/4), done.
Writing objects: 100% (8/8), 721 bytes | 48.00 KiB/s, done.
Total 8 (delta 0), reused 0 (delta 0)
To https://github.com/KennChow/test.git
   d439e29..7f27acd  master -> master

```

## 还好

~~~java
int a;
~~~

