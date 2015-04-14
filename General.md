# 设计可读性高的API

如以下代码

```lua
function Panel:showPanel_(isModal, isCentered, closeWhenTouchModel, useShowAnimation)
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