# 优雅的风格

## 使用 表查找 代替 一组 if-elseif
如:
```lua

if ret == -1 then
    self.logger:errorf("call %s failed, -1 不支持的参数类型或返回值类型", javaMethodName)
elseif ret == -2 then
    self.logger:errorf("call %s failed, -2 无效的签名", javaMethodName)
elseif ret == -3 then
    self.logger:errorf("call %s failed, -3 没有找到指定的方法", javaMethodName)
elseif ret == -4 then
    self.logger:errorf("call %s failed, -4 Java 方法执行时抛出了异常", javaMethodName)
elseif ret == -5 then
    self.logger:errorf("call %s failed, -5 Java 虚拟机出错", javaMethodName)
end

-- change to ->

local error_info = {
    [-1] = "-1 不支持的参数类型或返回值类型",
    [-2] = "-2 无效的签名"                ,
    [-3] = "-3 没有找到指定的方法"        ,
    [-4] = "-4 Java 方法执行时抛出了异常" ,
    [-5] = "-5 Java 虚拟机出错"           ,
}
local e = error_info[ret] or 'unknown'
self.logger:errorf("call %s failed" .. e, javaMethodName)

```

# 设计可读性高的API

如以下代码

```lua
function Panel:showPanel(isModal, isCentered, closeWhenTouchModel, useShowAnimation)
end
-- usage:
self:showPanel(true, true, true, true)
```

可以改成

```lua
function Panel:showPanel(param)
end
-- usage:
self:showPanel {
    isModal = true,
    isCentered = true,
    closeWhenTouchModel = true,
    useShowAnimation = true
}
```