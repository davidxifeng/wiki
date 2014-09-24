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
