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

- src 网站源码
    + db.sql **数据库文件**
    + index.php **源代码**
    + ...etc
- Dockerfile
- docker-compose.yml
- run.sh

#### 数据库

数据库账号：`root`  
数据库密码：`root`

请将要导入的数据存放在`src/db.sql`中，并在Dockerfile中编写`COPY src /var/www/html`，环境会自动导入，最终导入路径为`/var/www/html/db.sql`，如需要创建数据库账户请在db.sql中完成