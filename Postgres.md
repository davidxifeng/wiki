## basic

* build
* initdb -D psql-data : create a group of db files
* postgres -D psql-data : run server
* psql -p PORT -d postgres

## pl/lua

https://github.com/pllua/pllua.git

compile deps: Lua devel (include and lua.so) and pg_config

CREATE EXTENSION pllua;
