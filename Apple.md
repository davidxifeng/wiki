
## ssh-add 存储ssh key到登录keychain

一次系统升级后，使用id_rsa需要每次都输入密码了，好奇怪。

使用`ssh-add -K 私钥文件名`,可以解决这个问题。  see `man ssh-add`

## iOS的ad hoc测试包发布方式

* 可用的设备id是随着ipa一块发布的. app的跟目录下有一个xml文件embedded.mobileprovision,里面包含有ProvisionedDevices的array. 最多可以支持100个.

## Gatekeeper: OS X的反恶意软件检测

设置里的选项(app store, 认证的开发者, 任何地点), 第一次运行从网络下载的程序弹出的提示, 等功能都来源于此系统.

## homebrew

homebrew删除时并不处理依赖，比如brew rm xz, 其实libpng还依赖此库，但依然会毫无提示的继续删。
