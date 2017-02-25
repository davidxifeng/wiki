# zsh点滴


重定向stderr到stdout:
```zsh
lua t.lua 2>&1 | less
```


查找broken的软链接:

```zsh
find path -xtype l
```
see `man find`


[参考][Reference]

```zsh
ls **/*(.)`
```

`**/`: 递归glob

`*`: get everything

`(.)`: glob限定符, 只匹配文件

[Reference]:http://www.linux-mag.com/id/1079/
