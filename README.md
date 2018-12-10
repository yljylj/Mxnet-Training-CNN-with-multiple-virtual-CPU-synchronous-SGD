# Mxnet-Multiple-virtual-CPU-synchronous-SGD-on-Intel-platform
Devide the physical CPU to multiple virtual CPU, then doing a synchronous SGD. This method can greatly speed up classification network training on Intel CPU. In addition, this method can also be applied to arm.

For example, if the CPU has 28 cores, we divide it into 4 groups each with 7 cores and do a synchronos SGD.

We use shared memory ipc not parameter server to achieve parameter synchronization. 
