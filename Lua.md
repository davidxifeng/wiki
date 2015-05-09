## Lua 5.1 的 llex处理UTF-8 BOM的问题
简单地说,就是5.1版本不支持处理带有BOM (byte order mark)的UTF-8文件. 实测发现5.2和luajit可以正确解析.

如有需要可以修改5.1的源码支持此功能,或者简单的去掉BOM.

## Lua知识点

* # 操作符. 5.1中 #{1,nil, 3} 输出3, #{1,nil,3,nil} 输出1. 5.2中table的len只有是sequence时有意义,但我测试发现行为还是和5.1中的一样
* Lua: f(return_a_b(), c)调用中, return_a_b只返回a一个值, f(c, return_a_b())会返回c, a, b
* 如何格式化出001, 002, ..., 021 这样的字符串?
* Lua中如何遍历逗号分隔的内容, 如 'a,b,c,,d,e,f,g'. 包括空白和不包括空白的.
* 知道`for _, v in ipairs(t)` 这样的用法吗? `_`写法通常有什么含义?
* 两个local函数需要互相调用,应该怎么定义?
* Lua中local什么意思?为什么要采用这样的设计,而不是变量默认为local? 如果设计为local变量不加关键词的话,应该怎样设计?
* 用过哪些Lua IDE, 其调试功能如何实现?
* require函数如何工作的? package.path cpath preload loaders loaded
* 在一个可以执行Lua的环境中,(假设没有沙箱),如何使用Lua代码取得当前Lua虚拟机的
版本号? (`_VERSION`, 和高阶一点的string.dump(function()end)判断)? [进一步], 如何
判断当前Lua虚拟机的特性如int字长,`size_t`字长?如何判断Lua的number底层是整型还是
浮点型?
* Lua的沙箱环境如何实现?
