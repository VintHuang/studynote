#!/bin/sh
firstname=vincent
str1='my name is '$firstname
str2="my name is ${firstname}"
echo $str1 $str2
# 字符串长度
echo ${#firstname}
# 截取字符串
echo ${firstname:0:5}
# 查找字符串
echo `expr index $firstname e` #输出5