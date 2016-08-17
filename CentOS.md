
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

svn: subversion 官方仓库中的svn版本太旧,与win版协同工作需要自己编译新版
./configure --prefix=`echo ~/local` --enable-local-library-preloading
需要配置加载local lib;也可以使用--enable-all-static静态链接,编译成单个的可执行文件.

## epel源添加方法

su -c 'rpm -Uvh http://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm'


## CentOS package

epel源:

ag: `the_silver_searcher`
7z&7za: p7zip p7zip-plugins
ntfs-3g: ntfs-3g ntfs-3g-devel ntfsprogs

cmake
protobuf-compiler

glew


tmux
zsh
iotop
htop

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

系统管理工具

acpica-tools
