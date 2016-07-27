
# 虚拟化方案对比

* 虚拟化，直接执行（vmware virtualbox xen）
* 动态翻译 jit （qemu）
* 软件模拟 （bochs）

软件模拟方案不依赖host系统的cpu功能集，也不会暴露host cpu信息如cpuid指令给guest

* jit会增加额外的内存开销，降低host cpu的L1 L2缓存命中率
* 解释器可以很容易地实现性能分析(instrumentation)

# 汇编相关

* objdump 输出intel语法的反汇编 objdump -M intel -d a.out


* 什么是自旋锁 spin lock? 什么是互斥锁? 各有什么特点,应用在何种场景?
* compare and swap (cas)是什么? 原子操作, 编译器(gcc) 固有指令
* 读写锁 (锁定读, 锁定写, 未加锁 3种状态) 共享-独占锁
