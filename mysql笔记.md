# MySQL

## 概述

### 语言规范

mysql对于SQL语句不区分大小写，SQL语句关键字尽量大写

SQL 可以写在一行或者多行。为了提高可读性，各子句分行写，必要时使用缩进

关键字不能被缩写也不能分行 (from, select..)

值，除了数值型，字符串型和日期时间类型使用单引号（' '）

别名，尽量使用双引号（" "），而且不建议省略as  **双引号只有这一个作用**

所有标点符号使用英文状态下的半角输入方式

可以使用（1）#单行注释 （2）--空格单行注释 （3）/* 多行注释 */

### 语言分类

DDL : 定义 create drop alter rename truncate .. 定义数据库对象(表，索引，视图..）

DML : 操纵  insert delete update select ..

DCL : 控制 grant revoke(回收权限) commit rollback savepoint



### others
