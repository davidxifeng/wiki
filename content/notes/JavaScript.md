### node npm

http请求封装库: axios

服务端http框架: koa

redis client:

* node-redis https://github.com/NodeRedis/node_redis
* ioredis https://github.com/luin/ioredis
  medis: open source redis gui client with eletron

### TypeScript

interface

object的字段

函数签名

```
interface EqFunc {
  (a: string, b: string): boolean;
}
```

indexable types

```
interface StringArray {
  [index: number]: string;
}
```

组合使用

``` typescript
interface Counter {
    (start: number): string;
    interval: number;
    reset(): void;
}

function getCounter(): Counter {
    let counter = <Counter>function (start: number) { };
    counter.interval = 123;
    counter.reset = function () { };
    return counter;
}

// function object property

let c = getCounter();
c(10);
c.reset();
c.interval = 5.0;
```

### Promise


### 生成器函数

```
function* gen() {
  yield 1;
  yield 2;
}

var g = gen();
g.next(); // {value:1, done: false}
g.next(); // {value:2, done: false}
g.next(); // {value:undefined, done: true}
```


### getter与setter

```javascript
// Using the get operator
var o = { get givemeFive() { return 5; } };
// Using Object.defineProperty
var o = {};
Object.defineProperty(o, 'givemeFive', {
  get: function() {
    return 5;
  }
});
```
附已经废弃的: `__defineGetter__`

### 构造函数 与 this new

js: 如果没有没有使用new就调用了带有this的构造函数,那么构造函数就蜕变为一个
普通函数,this表示全局对象. 不过使用use strict; 可以避免这种情况
(原理是js不允许对undefined对象的添加属性)

### instanceof

```js
[1, 2, 3] instanceof Array // true

({}) instanceof Object // true

// 但是原始类型不是对象,所以 1, '', 不可以使用 `instanceof`

var v = new Vehicle();

v instanceof Vehicle // true
```

### this in js

this是当前函数的运行环境. js支持环境的动态切换

this的运行环境也是一个对象,如果函数在全局环境中运行,就是指全局变量;如果作为对象
的方法运行,this指那个对象.

(初学js,对此理解不深,更没有深入研究过,不过我感觉应该是类似于Lua的 `setfenv`)

### prototype bind call apply

prototype用法:

```js
var O = function(p) {
    this.p = p;
};

O.prototype.m = function() {
    console.log(this.p)
    return this.p;
};

var o1 = new O("Hello World!");
o1.m() // "Hello World!"

var o2 = new O("Hello o2");
o2.m() // "Hello o2"
```

call apply bind 与this

```js
function f(x,y){ console.log(x+y); }
f.call(null,1,1) // 2
f.apply(null,[1,1]) // 2

// apply 的 奇技淫巧
var a = [1,2,3];
Math.max.apply(null, a) // 3

// call bind 和prototype结合起来的奇技淫巧...
[1,2,3].slice(0,1) // [1]

Array.prototype.slice.call([1,2,3], 0, 1) // [1]

// call方法实质上是调用Function.prototype.call
var slice = Function.prototype.call.bind(Array.prototype.slice);
slice([1, 2, 3], 0, 1) // [1]

```
