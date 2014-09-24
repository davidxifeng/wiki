1. 对象的 `__defineGetter__` 方法来定义getter, 不过这个api已经废弃.

```javascript
// 推荐用法:
// Using the get operator
var o = { get gimmeFive() { return 5; } };

// Using Object.defineProperty
var o = {};
Object.defineProperty(o, 'gimmeFive', {
  get: function() {
    return 5;
  }
});
```
建议我们项目新代码使用标准写法~

2. 构造函数 与 this new

js: 如果没有没有使用new就调用了带有this的构造函数,那么构造函数就蜕变为一个
普通函数,this表示全局对象. 不过使用use strict; 可以避免这种情况
(原理是js不允许对undefined对象的添加属性)

3. instanceof

```js
[1, 2, 3] instanceof Array // true

({}) instanceof Object // true

// 但是原始类型不是对象,所以 1, '', 不可以使用 `instanceof`

var v = new Vehicle();

v instanceof Vehicle // true
```

4. this in js

this是当前函数的运行环境. js支持环境的动态切换

this的运行环境也是一个对象,如果函数在全局环境中运行,就是指全局变量;如果作为对象
的方法运行,this指那个对象.

(初学js,对此理解不深,更没有深入研究过,不过我感觉应该是类似与Lua的 `setfenv`)

