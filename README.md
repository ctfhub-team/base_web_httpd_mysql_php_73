# 基础镜像 Web HTTPd MariaDB PHP 7.3

## 环境信息
- L: Debian 10 buster
- A: Apache/2.4.38
- M: 10.3.22-MariaDB-0+deb10u1 Debian 10
- P: PHP 7.3
- PHP MySQL Ext
    + mysqli
    + pdo_mysql

--------

## 使用说明

### 环境变量

| 变量名称    | 变量默认值              | 变量说明 |
| ----------- | ----------------------- | -------- |
| FLAG        | ctfhub{test_flag}       | FLAG     |
| DOMAIN_NAME | test.sandbox.ctfhub.com | 域名     |

当from本环境并进行测试时请指定环境变量，可参考本目录下`docker-compose.yml`编写

### 文件

- src/ 网站源码
  - db.sql **数据库文件**
  - index.php **源代码**
  - ...etc
- _files
  - flag.sh **FLAG自动处理脚本**
  - 000-default.conf **Apache2 网站配置**
- Dockerfile
- docker-compose.yml
- run.sh **测试脚本**

### 数据库

数据库账号：`root`
数据库密码：`root`

### 说明
1. 当环境启动后。root密码将会自动修改为随机。请自行在`flag.sh`中创建普通用户并授予相应权限，如有需求使用root用户，请在`flag.sh`中自行处理
2. 如对Apache虚拟主机有特殊需求。请添加`000-default.conf`至`_files`中，启动时会自动替换
3. 请将要导入的数据存放在`src/db.sql`中，并在Dockerfile中编写`COPY src /var/www/html`，环境会自动导入，最终导入使用路径为`/var/www/html/db.sql`，导入完毕后会`自动删除`db.sql