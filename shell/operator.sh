#!/bin/sh
# math
a=20
b=10
echo "a + b : `expr $a + $b`"
echo "a - b : `expr $a - $b`"
echo "a * b : `expr $a \* $b`"
echo "a / b : `expr $a / $b`"
echo "a % b : `expr $a % $b`"

# relational
if [ $a == $b ]; then
	echo "a 等于 b"
elif [ $a != $b ]; then
	echo "a 不等于 b"	
fi

if [ $a -eq $b ]; then
	echo "a 等于 b"
fi
if [ $a -ne $b ]; then
	echo "a 不等于 b"
fi
if [ $a -gt $b ]; then
	echo "a 大于 b"
fi
if [ $b -lt $a ]; then
	echo "b 小于 a"
fi
if [ $a -ge $b ]; then
	echo "a 大于或等于 b"
fi
if [ $b -le $a ]; then
	echo "b 小于或等于 a"
fi

# bool
if [ ! $a -lt $b ]; then
	echo "a 大于 b"
fi
if [ $a -gt 15 -o $b -gt 15 ]; then
	echo "a 大于 15 或者 b 大于 15"
fi
if [ $a -gt 15 -a $b -lt 20 ]; then
	echo "a 大于 15 并且 b 小于 20"
fi

# logic
if [[ $a -gt 15 || $b -gt 15 ]]; then
	echo "a 大于 15 或者 b 大于 15"
fi
if [[ $a -gt 15 && $b -lt 20 ]]; then
	echo "a 大于 15 并且 b 小于 20"
fi

# string
c="abc"
d="efgh"

if [ $c = $d ]; then
	echo "c 和 d 相等"
fi
if [ $c != $d ]; then
	echo "c 和 d 不相等"
fi
if [ -z $c ]; then
	echo "c 长度为0"
fi
if [ -n $c ]; then
	echo "c 长度不为0"
fi
if [ $c ]; then
	echo "c 不为空"
fi

# file
ofile="/mnt/html/wencai.name/shell/array.sh"
if [ -d $ofile ]; then
	echo "属于目录"
fi
if [ -e $ofile ]; then
	echo "文件存在"
fi
if [ -r $ofile ]; then
	echo "文件可读"
fi
if [ -w $ofile ]; then
	echo "文件可写"
fi
if [ -x $ofile ]; then
	echo "文件可执行"
fi
if [ -s $ofile ]; then
	echo "文件不为空"
fi