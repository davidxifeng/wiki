## 语言开发环境

### Python

* yum install python-setuptools python-pip
* sudo pip install --upgrade pip
* sudo pip install pygments


### Haskell

haskell platform方案

1. wget -c https://haskell.org/platform/download/8.0.1/haskell-platform-8.0.1-unknown-posix--minimal-x86_64.tar.gz
2. tar -xvf
3. sudo ./install-haskell-platform.sh
4. sudo ln -s /usr/lib64/libgmp.so.10 /usr/lib64/libgmp.so

ghci报了找不到gmp,手动创建软链接解决了.

安装log

```
unpacking ./hp-usr-local.tar.gz to /...
running /usr/local/haskell/ghc-8.0.1-x86_64/bin/activate-hs ...

haskell set to:
    ghc         /usr/local/haskell/ghc-8.0.1-x86_64
    haddocks    file:///usr/local/haskell/ghc-8.0.1-x86_64/doc/frames.html
    other doc   file:///usr/local/haskell/ghc-8.0.1-x86_64/share/doc/ghc/html/index.html

symlinks for command line tools (ghc, cabal, etc..) added to:
    /usr/local/bin
```

### Erlang

yum install erlang erlang-doc elixir

会安装很多依赖: tcl tk wxGTK (gtk2) wxGTK-gl graphviz ...

## 安装包风格的软件

vmware player
chrome
atom

## 自己构建的软件

适合安装在~/local或软链接到~/bin

radare2
vim 定制选项
redis 跟进最新版
lua53
luvit
nodejs 最新版
fasm
nasm
flatc
cloc
ranger: install via local git repo

### vim 编译

huge version with gtk3 gui

(部分)依赖:

* **libXt-devel**
* libXpm-devel
* gtk3-devel
* lua-devel
* python-devel
* ruby-devel

> ./configure --prefix=`echo ~/local` \
>   --with-features=huge \
>   --enable-luainterp=yes \
>   --enable-pythoninterp=yes \
>   --enable-rubyinterp=yes \
>   --enable-cscope \
>   --with-x=yes \
>   --enable-gui=gtk3

### subversion

* 下载安装apache serf http库

> scons PREFIX=`echo ~/local`; scons install

* 动态库并设置本地路径

> ./configure --prefix=`echo ~/local` --enable-local-library-preloading --with-serf=`echo ~/local`


## CentOS package

### 常用软件

* meld
* protobuf-compiler
* cmake
* scons
* glew
* unar: open source unrar
* tmux
* zsh
* iotop
* htop
* tree
* caca-utils
* qemu-kvm
* qemu
* NetworkManager-pptp
* NetworkManager-pptp-gnome
* nmap nmap-frontend
* dos2unix: dos2unix mac2unix unix2dos unix2mac
* ag: `the_silver_searcher`
* 7z&7za: p7zip p7zip-plugins
* ntfs-3g: ntfs-3g ntfs-3g-devel ntfsprogs
* rlwrap: readline wrap
* git2u (ius源)
* mariadb: mariadb mariadb-devel mariadb-server

### 开发

* kernel-doc
* gl-manpages
* mesa-demos
* xorg-x11-docs
* gtk3-devel-docs
* libXfont-devel
* sqlite-devel
* readline-devel
* mesa-libGLU-devel
* newt-devel
* glew-devel
* bzip2-devel
* fuse-devel
* openssl-devel
* pcre-devel
* gobject-introspection-devel
  deps for `lgi`: dynamic Lua binding to GObject libraries using
  GObject-introspection
* libffi-devel
* wxGTK3 wxGTK3-devel wxGTK3-docs wxGTK3-gl wxGTK3-media
* boost-devel
* protobuf-devel


### 添加源

epel:

> su -c 'rpm -Uvh http://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm'

ius, inline with upstream:
> su -c 'rpm -Uvh https://centos7.iuscommunity.org/ius-release.rpm'

## 系统设置

### 改键

x环境改键

改键这块有bug. gnome tweak tool无法成功修改.
右alt改右ctrl我查了很久资料才搞定.怀疑有些文档没有更新

> setxkbmap -option # 清除已有项
> setxkbmap -option caps:swapescape # swap caps esc
> setxkbmap -option ctrl:ralt_rctrl # right alt -> right ctrl

