* 补码 0000 FFFF(-1)
* 移码 (Lua中,iAsBx格式的指令中,使用了移码来表示有符号整数)


centos 6上，使用`gcc a.cpp`会报错，因为没有指定连接stdc++动态库；
加上-lstdc++之后，`ldd a.out`会显示出目标动态链接了libstdc++.so.6 libgcc_s.so等文件

使用`clang a.cpp`可以直接编译，`ldd a.out`显示只链接了linux-vdso.so.1 libc.so.6等文件；
猜想clang的c++库是静态链接的。

可执行文件中的符号需要导出后才可以给加载的so使用，使用gcc/clang选项：`-Wl,-E`,skynet中就是这样使用的。
