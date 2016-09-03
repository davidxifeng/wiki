man 7 tcp

man 7 socket

## TCP

### 心跳包与keep alive

Linux下,开启keep alive选项后,系统默认的3个参数:

* tcp_keepalive_intvl
  The number of seconds between TCP keep-alive probes.
  检测间隔时间 默认75秒
* tcp_keepalive_probes
  最大检测次数 默认9次
* tcp_keepalive_time
  连接闲置多久后开始发送 keep alive检测包. 默认值是 7200秒 (2个小时!)
  约额外的11分钟(9 * 75)后还没有收到回应包,连接才会终止.

由此可见,如果想使用keep alive选项的话,系统默认参数是一定要修改的.


