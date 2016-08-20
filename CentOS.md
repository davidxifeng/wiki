
## 软件

vmware player
chrome
atom

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

acpica-tools
