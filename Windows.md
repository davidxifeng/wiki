# windows开发环境

## 软件

* visual studio社区版
* 安装插件VsVim RelativeLineNumbers(同类插件有两个,选择这个) CodeMaid
* 改键软件key tweak; 改键 capslock, 右alt, esc
* sublime text 3
* 海龟svn
* python
* 7-zip
* FileZilla
* shadow socks
* 微信 企业微信
* LibreOffice

* Chrome浏览器 并登陆帐号同步个人数据

## 系统设置

* 关闭会导致系统重启的自动更新.
  这点简直是不可理喻的一个愚蠢默认设置,强制替客户做决定.
  关闭方法: Win+R services.msc 把windows update服务禁掉.
  (是否最佳方案待确认)


## BAT basic

* xcopy:
  copy文件时,只有当源文件比目标文件新时才直接覆盖copy:

  ```
  xcopy /d /y src dest
  ```
  /d 计算时间戳; /y 直接覆盖不提示

* start:

  写启动脚本时,start相当于bash中的exec.某些场景下可以少创建一个console窗口
