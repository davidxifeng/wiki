# Lua源码学习

* 一个函数有多个不同场景下的用法,可以使用宏来给函数定义多个名字,在不同的场景使用不同的名字以使代码更加清晰易懂.如:

```C
/* from stack to (same) stack */
#define setobjs2s	setobj
/* to stack (not from same stack) */
#define setobj2s	setobj
```