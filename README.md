# Testsuits for OS Kernel 2024 riscv

### 测试用例

- busybox
- busybox+lua相关
- lmbench相关
- iozone相关
- iperf
- libc-bench
- libc-test
- netperf
- time-test
- ltp

### 注意

- time-test 为测试Kernel的time函数是否准确，其结果只作为专家评审的参考，不计入总分，但time-test必须成功执行成绩才有效。
  - `lua`脚本和其他测试脚本要依赖`busybox`的`sh`功能。所以OS kernel首先需要支持`busybox`的`sh`功能。
  - 部分脚本会需要特定的OS功能（syscall, device file等），OS kernel需要一步一步地添加功能，以支持不同程序的不同执行方式。
- ext4文件系统镜像`sdcard.img`是用`mkfs.ext4`工具生成的。
  - [C或Rust语言实现的ext4相关的库和OS参考](https://github.com/oscomp/os-competition-info/blob/main/ref-info.md#ext4%E6%96%87%E4%BB%B6%E7%B3%BB%E7%BB%9F%E5%8F%82%E8%80%83%E5%AE%9E%E7%8E%B0)

由于LTP测试用例数量较多，执行时间较长，默认的test_all.sh中未包含启动ltp测试的命令。各参赛队伍可根据实际情况选择要运行的样例。
运行单个样例的方法：
```sh
./test-ltp.sh ltp/testcases/bin/abs01
```
运行全部ltp样例的方法：
```
ls ltp/testcases/bin/ | xargs -n 1 -I {} ./test-ltp.sh ltp/testcases/bin/{}
```

## 程序的运行环境
示例程序的运行环境是Debian on Qemu RV64，搭建过程如下：

1. 在[https://people.debian.org/~gio/dqib/](https://people.debian.org/~gio/dqib/)点击[Images for riscv64-virt](https://gitlab.com/api/v4/projects/giomasce%2Fdqib/jobs/artifacts/master/download?job=convert_riscv64-virt)下载artifacts.zip。
2. 解压。`unzip artifacts.zip`
3. 安装`qemu-system-riscv64`，`opensbi`和`u-boot-qemu`。
4. 参考`artifacts/readme.txt`里的指令启动debian。

> 也可选择使用搭建好的镜像，下载地址：https://pan.baidu.com/s/1VetzxHOv1M4N0DdCpZCCMg 提取码：0uca
> 执行`./run.sh`进入系统，登陆用户名：root，密码：root

下载好镜像之后，将oscomp-debian放在本目录下，修改oscomp-debian/run.sh，在其中加入`-drive file=../sdcard.img,if=none,format=raw,id=x0 -device virtio-blk-device,drive=x0,bus=virtio-mmio-bus.0`参数。执行make qemu进入系统。

进入系统后将/dev/vdb挂载至/mnt，随后可以进入/mnt目录运行测试程序。

## 构建测试用例

docker run --rm -it -v $(pwd):/code --privileged --entrypoint make alphamj/os-contest:v7.7 -C /code sdcard
