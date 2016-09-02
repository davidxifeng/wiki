## 开发环境

### Python

* yum install python-setuptools python-pip
* sudo pip install --upgrade pip
* sudo pip install Pygments


### Haskell

Haskell Platform方案

1. wget -c https://haskell.org/platform/download/8.0.1/haskell-platform-8.0.1-unknown-posix--minimal-x86_64.tar.gz
2. tar -xvf
3. sudo ./install-haskell-platform.sh
4. sudo ln -s /usr/lib64/libgmp.so.10 /usr/lib64/libgmp.so

ghci报了找不到gmp,手动创建软链接解决了.

安装log

```
Unpacking ./hp-usr-local.tar.gz to /...
Running /usr/local/haskell/ghc-8.0.1-x86_64/bin/activate-hs ...

Haskell set to:
    GHC         /usr/local/haskell/ghc-8.0.1-x86_64
    Haddocks    file:///usr/local/haskell/ghc-8.0.1-x86_64/doc/frames.html
    Other doc   file:///usr/local/haskell/ghc-8.0.1-x86_64/share/doc/ghc/html/index.html

Symlinks for command line tools (ghc, cabal, etc..) added to:
    /usr/local/bin
```


## 软件

vmware player
chrome
atom
meld 其实已经很好用了 yum install meld

## build

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

svn: subversion

* 下载安装apache serf http库

> scons PREFIX=`echo ~/local`; scons install

* 动态库并设置本地路径

> ./configure --prefix=`echo ~/local` --enable-local-library-preloading --with-serf=`echo ~/local`


## 添加源

epel:

> su -c 'rpm -Uvh http://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm'

ius, inline with upstream:
> su -c 'rpm -Uvh https://centos7.iuscommunity.org/ius-release.rpm'

## CentOS package

epel源:

ag: `the_silver_searcher`
7z&7za: p7zip p7zip-plugins
ntfs-3g: ntfs-3g ntfs-3g-devel ntfsprogs

rlwrap: readline wrap

安装ius源的新版git:
> sudo yum install git2u

protobuf-compiler

cmake
scons

glew


tmux
zsh
iotop
htop
tree

ranger: install via local git repo

qemu-kvm
qemu

kernel-doc
gl-manpages
mesa-demos

readline-devel
lua-devel
mesa-libGLU-devel
newt-devel
glew-devel
bzip2-devel
gtk3-devel
ruby-devel
fuse-devel
openssl-devel -> pcre-devel


系统管理工具

NetworkManager-pptp
NetworkManager-pptp-gnome

acpica-tools

yum install dos2unix:
dos2unix mac2unix unix2dos unix2mac

# 系统设置

## 改键

x环境改键

改键这块有bug. gnome tweak tool无法成功修改.
右alt改右ctrl我查了很久资料才搞定.怀疑有些文档没有更新

> setxkbmap -option # 清除已有项
> setxkbmap -option caps:swapescape # swap caps esc
> setxkbmap -option ctrl:ralt_rctrl # right alt -> right ctrl

