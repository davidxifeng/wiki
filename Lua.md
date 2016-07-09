
## tips

### 位运算

位运算 |  Lua |    C
-------|------|-----
与     |  &   |    &
或     |  `|` |    `|`
非     |  ~   |    ~
异或   |  ~   |    ^
左移   |  <<  |    <<
右移   |  >>  |    >>


## Lua C API

### stack

``` c
int lua_absindex (lua_State *L, int idx);
void lua_copy (lua_State *L, int fromidx, int toidx);
int lua_gettop (lua_State *L);
void lua_insert (lua_State *L, int index);
void lua_pop (lua_State *L, int n);
void lua_remove (lua_State *L, int index);
void lua_replace (lua_State *L, int index);
void lua_rotate (lua_State *L, int idx, int n);
void lua_settop (lua_State *L, int index);

void lua_xmove (lua_State *from, lua_State *to, int n);

```


## Lua源码

* luaV lvm.c 虚拟机

* luaE state

* luaF function
* luaH table hash
* luaS string

* luaO lobject

* luaD ldo.c 函数调用及返回

* luaT ltm.c 元表

* luaC lgc.c 垃圾回收 标记清理

* luaM lmem.c 内存管理
* luaZ lzio.c 流IO

* luaX llex.c 词法解析
* luaY lparser.c 语法分析
* luaK lcode.c 指令生成

* luaU ldump lundump 字节码的序列化 最简单的部分

## Lua知识点

* 5.3开始，pairs和ipairs才会触发index/newindex元方法，使用的api是lua_geti/seti,
之前的版本使用的是rawseti/rawgeti
* # 操作符. 5.1中 #{1,nil, 3} 输出3, #{1,nil,3,nil} 输出1. 5.2中table的len只有是sequence时有意义,但我测试发现行为还是和5.1中的一样
* Lua: f(return_a_b(), c)调用中, return_a_b只返回a一个值, f(c, return_a_b())会返回c, a, b
* 如何格式化出001, 002, ..., 021 这样的字符串? `string.format('%03d', [1 .. 999])`
* Lua中如何遍历逗号分隔的内容, 如 'a,b,c,,d,e,f,g'. 包括空白和不包括空白的.
* pairs ipairs区别，语义，
* `_`写法什么含义？
* 两个local函数需要互相调用,应该怎么定义?
* Lua中local什么意思?为什么要采用这样的设计,而不是变量默认为local?
  如果设计为local变量不加关键词的话,应该怎样设计?（参考moonscript，添加export，保留local）
* 用过哪些Lua IDE,有哪些功能? 其调试功能如何实现? (ZeroBraneStudio, decode, BabeLua, LDT,
  ...)(自动补全，语法高亮，代码格式化，……)(debug api)
* LuaDoc， LDoc，文档生成工具
* require函数如何工作的? package.path cpath preload loaders loaded
* 实现一个loader，可以对Lua文件进行预处理
* Lua require 'test.a' 和 'test/a' 搜索的路径虽然可以相同，
  但在package.loaded表中却是两个不同的项，以两个参数分别调用require，
  会使相应的Lua源文件加载2次，可能会有期待外的效果发生。
  所以： 1. 模块中要根据情况避免副作用， 2. 一个项目中约定使用一种路径分隔符

* 按要求实现一个加强版的load() (inject run; debug api收集local和upvalue，然后
按照模板编译代码，run update)

* 在一个可以执行Lua的环境中,(假设没有沙箱),如何使用Lua代码取得当前Lua虚拟机的
版本号? (`_VERSION`, 和高阶一点的string.dump(function()end)判断)? [进一步], 如何
判断当前Lua虚拟机的特性如int字长,`size_t`字长?如何判断Lua的number底层是整型还是
浮点型?
* Lua的沙箱环境如何实现?
* `g = g or {}` 有什么特性? [代码可以重入, 多次执行的话变量不会被多次初始化;
  也可以不用考虑多个模块的初始化顺序]
* 5.1 `tostring`对number（默认的double实现）的输出格式。luaconf.h中的`"%.14g"`,"%e%f"
* 5.1 不支持处理有BOM的UTF-8文件, 需要修改5.1或去掉BOM.
