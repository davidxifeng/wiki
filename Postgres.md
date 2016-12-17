## basic

* build
  vpath build:
  在源码外运行configure script,即可以实现out of source build
* initdb -D psql-data : create a group of db files
* postgres -D psql-data : run server
* psql -p PORT -d postgres

服务器基本配置

/data/postgresql.conf 设置服务器监听的IP地址和端口
/data/pg_hba.conf 设置不同host的访问认证方式


## pl/lua

https://github.com/pllua/pllua.git

compile deps: Lua devel (include and lua.so) and pg_config

CREATE EXTENSION pllua;
