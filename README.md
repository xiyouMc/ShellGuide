# ShellGuide
This`s guide of shell.

# Help
#### [Shell教程](http://www.runoob.com/linux/linux-shell-basic-operators.html)

```shell
myUrl="www.baidu.com"
#:readonly myUrl
myUrl="www.google.com"

name='machao'
greeting="hello,"$name" !"
greeting_1="hello,${name} !"
echo $greeting $greeting_1
echo "name lenght:"${#name}
echo "split name 1- 2:"${name:1:2}
#echo `expr index "$name" mc`
array_name=(
1,
2,
3,
4
)
echo "array[0]:${array_name[0]}"
echo "array length:${#array_name[*]}"
echo "Shell 传递参数!!"
echo "执行文件名: $0";
echo "第一个参数为：$1"
echo "第二个参数为：$2"
echo "当前进程ID:$$"
echo "传递的参数有: $*"

echo "-----\$* 演示"
for i in "$*";do
  echo $i
done

echo "-----\$@ 演示"
for i in "$@";do
  echo $i
done

val=`expr 2 + 2 `
echo "2+2之和:$val"

a=10
b=20
echo "a:$a b:$b"
val=`expr $a + $b`
echo "a + b : $val"

val=`expr $a - $b`
echo "a - b : $val"

val=`expr $a \* $b`
echo "a * b : $val"

val=`expr $b / $a`
echo "b / a : $val"

val=`expr $b % $a`
echo "b % a : $val"

#val = "$(($b * $a))"
#echo "mac b*a:$val"
if [ $a == $b ]
then
   echo "a 等于 b"
fi
if [ $a != $b ]
then
   echo "a 不等于 b"
fi


if [ $a -eq $b ]
then
   echo "$a -eq $b : a 等于 b"
else
   echo "$a -eq $b: a 不等于 b"
fi
if [ $a -ne $b ]
then
   echo "$a -ne $b: a 不等于 b"
else
   echo "$a -ne $b : a 等于 b"
fi
if [ $a -gt $b ]
then
   echo "$a -gt $b: a 大于 b"
else
   echo "$a -gt $b: a 不大于 b"
fi
if [ $a -lt $b ]
then
   echo "$a -lt $b: a 小于 b"
else
   echo "$a -lt $b: a 不小于 b"
fi
if [ $a -ge $b ]
then
   echo "$a -ge $b: a 大于或等于 b"
else
   echo "$a -ge $b: a 小于 b"
fi
if [ $a -le $b ]
then
   echo "$a -le $b: a 小于或等于 b"
else
   echo "$a -le $b: a 大于 b"
fi

val = 'aaa'
if [ $val ]
then echo "val不为空"
else echo "val为空"
fi

#echo教程
read name
echo "$name It is a test."

echo "Ok \n"
echo "It is a test."

echo "Ok \c"  #\c不换行
echo "It is a test."


echo "It is a test" > echoToFile

echo `date`

#printf 命令模仿 C 程序库（library）里的 printf() 程序。
#标准所定义，因此使用printf的脚本比使用echo移植性好。
#printf 使用引用文本或空格分隔的参数，外面可以在printf中使用格式化字符串，还可以制定字符串的宽度、左右对齐方式等。默认printf不会像 echo 自动添加换行符，我们可以手动添加 \n。
#printf 命令的语法：

printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876

# format-string为双引号
printf "%d %s\n" 1 "abc"

# 单引号与双引号效果一样
printf '%d %s\n' 1 "abc"

# 没有引号也可以输出
printf %s abcdef

# 格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用
printf %s abc def

printf "%s\n" abc def

printf "%s %s %s\n" a b c d e f g h i j

# 如果没有 arguments，那么 %s 用NULL代替，%d 用 0 代替
printf "%s and %d \n"

```
