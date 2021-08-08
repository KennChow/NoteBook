![image-20210323203133267](/Users/zhouchen/Library/Application Support/typora-user-images/image-20210323203133267.png)

![image-20210323203318074](/Users/zhouchen/Library/Application Support/typora-user-images/image-20210323203318074.png)

# 使用docker的步骤

```
1.拉取一个镜像
2.创建一个容器（就是创建一个可写的目录）
3.在容器中创建命令
```

# docker基本命令

```
容器：
docker run   -it ubuntu /bin/bash  运行镜像，创建容器  (--rm  运行完直接删除容器)
//-i: 交互式操作 -t: 终端 ubuntu: ubuntu 镜像  /bin/bash：放在镜像名后的是命令，这里我们希望有个交互式 Shell，因此用的是 /bin/bash。
//还可以加个-d 因为在大部分的场景下，我们希望docker的服务是在后台运行的，我们可以过-d指定容器的运行模式
docker ps    列表
docker ps -a   查看所有容器(包括停止的)
docker start/stop    开启/关闭
docker rm    删除
docker rename    改名
docker cp		复制
docker prune		删除停止的容器
docker exec	 -it 96bbc16b7390 /bin/bash	运行命令，进入容器(退出容器不会自动关闭)
docker commit  -m="has update" -a="runoob" e218edb10161 runoob/ubuntu:v2   从容器创建新镜像
//-m: 提交的描述信息 -a: 指定镜像作者 e218edb10161：容器ID  runoob/ubuntu:v2: 指定要创建的目标镜像名
镜像：
docker image		镜像列表
docker rmi		删除镜像
docker image prune		将不用的镜像 删除
docker save/load		镜像保存
//docker save -o torch04runtime.tar pytorch/pytorch:0.4.1-cuda9-cudnn7-runtime
docker pull/push		镜像传输(与registry互动)
docker tag    给镜像打标签
信息和状态：
docker logs		日志
docker stats		状态
docker version		版本
docker top		进程
docker inspect		元数据
docker diff		变化
docker port		端口
数据卷管理：
docker volume create    数据卷创建
docker volume ls    数据卷列表
docker volume inspect    元数据
docker volume rm 删除数据卷
从Dockerfile构建环境
docker build -t yolov5:v1 .  //最后的.千万别忘了

```
