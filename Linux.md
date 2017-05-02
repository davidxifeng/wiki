* ubuntu server 禁止自动锁屏
  `
  /etc/default/grub GRUB_CMDLINE_LINUX_DEFAULT consoleblank=0
  `
  sudo update-grub
  https://askubuntu.com/questions/138918/how-do-i-disable-the-blank-console-screensaver-on-ubuntu-server

