#!/bin/sh
# sh ./param.sh 1 b
echo "执行的文件名：$0"
echo "第一个参数为：$1"
echo "第二个参数为：$2"

echo "参数的个数为：$#"
echo "输出所有参数：$*"

# 脚本运行的当前进程ID号
echo $$
# 后台运行的最后一个进程的ID号
echo $!
# 显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。
echo $?