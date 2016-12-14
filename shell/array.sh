#!/bin/sh
arr1=(A B "C" d)
echo ${arr1[0]}

# 获取所有元素
echo ${arr1[*]}
echo ${arr1[@]}

# Different between * and @
for i in "${arr1[*]}"; do
	echo $i;
done

for i in "${arr1[@]}"; do
	echo $i;
done

# 数组长度
echo ${#arr1[*]}