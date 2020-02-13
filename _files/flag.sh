#!/bin/bash

# 创建数据库账号
# DB_NAME=xxx
# mysql -e "CREATE DATABASE $DB_NAME default chatacter set utf8;" -uroot -proot
# mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO 'ctfhub'@'localhost' IDENTIFIED BY 'ctfhub';" -uroot -proot

# 设置动态flag
## 文件类
# echo $FLAG > /var/www/html/flag.php
## 数据库类
# sed -i "s#NO_FLAG#$FLAG#" /var/www/html/db.sql || true

# 修改root密码
mysql -e "UPDATE mysql.user SET Password=PASSWORD(substring(MD5(RAND()),1,20)) WHERE user='root';" -uroot -proot

# 清空flag
export FLAG=not_flag
FLAG=not_flag
rm -f /flag.sh