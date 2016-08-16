## 修复内核

Tue Aug 16 12:18:06 HKT 2016

1. try install sound driver from source download from realtek
2. sudo make install remove kernel modules
3. diff `rpm -qil kernel | ag kernel/sound.*ko ` with `find . -name '*.ko'`
4. reboot with old kernel
5. sudo yum reinstall kernel
6. reboot to current kernel



## CentOS package

* -m32: glibc-devel.i686 libgcc.i686

