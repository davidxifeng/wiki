# Lua源码学习

* api的返回值，成功返回0，各种失败原因返回其他非零值（或者负值），成功的值只有一个，失败的情况有多种；调用处也可以这样写`f() || g();`。

* 一个函数在多个场景下有不同的用法,可以使用宏来给函数定义多个名字,在不同的场景使用不同的名字以使代码更加清晰易懂.如:

```C
/* from stack to (same) stack */
#define setobjs2s	setobj
/* to stack (not from same stack) */
#define setobj2s	setobj
```
