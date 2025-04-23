## skynet服务热更新设计要点

* **先对哪些内容可以热更新有深入的理解**
* 限制使用`skynet.timeout`
  可以使用自己实现的高级定时器封装，也可以小心一点使用timeout，注意可以取消，或者没有版本状态依赖。

## skynet

* skynet.wait(co)
  参数中的co完全可以省略,因为其只有是coroutine.running()的时候才有意义.
  云风之所以加上这个参数,是因为在一些场景此值需要提前获取, 获取后直接传进来,
  在wait()内部不用再调用api了,算是一个小优化...

* socketdriver.send的参数可以可以是指针,Lua string表或string.
  需要注意的是,传给skynet_socket_send的buffer的内存,会由socket_server模块在使用完后
  释放.所以如果参数不是指针时,lsend会分配内存,copy buffer.

* 单进程内skynet 服务数量的理论上线是32位的handle值的低24位, 高8位保留给了最多可
  255个skynet集群节点. 2 ^ 24 = 16777216;

* 单个消息的size的上限是32位的size去掉 8位的 通道信息,也就是 16MB

* skynet消息调度从无锁的CAS到 自旋锁 spin lock的变动:
  http://blog.codingnow.com/2014/12/skynet_spinlock.html
  http://www.cnblogs.com/fingerpass/p/message-queue.html


* /service-src/service_gate.c: legacy gate
  /service/gate.lua: new gate, see 1e9a27232ba43da10d3a1e1d59e5ee14b052e2d5
  skynet remove c service_client.c in 47167ea2e84ae701fdf6032b856b92811d33ac33



* snlua的启动流程之所以设计成两步完成，是因为服务初始化可能会耗时，
  分成两步后就可以利用上多核的优势了。
  http://blog.codingnow.com/2013/06/skynet_watchdog.html

* 云风的agent pool并没有设计成可回收的，理由是这样做就浪费了Lua做沙箱的好处，
  也没有明显的性能提升，还增加了实现的复杂度。

* agent pool的用途是提前创建好大量的agent，然后应对高峰期大量用户的同时进入；
  还启动了一个定时器来检查agent池是否枯竭，定期补充。

* 做压力测试的时候需要注意这个问题。测试创建一定数量agent的耗时，使用agent池。
