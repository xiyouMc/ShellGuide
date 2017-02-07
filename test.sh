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
echo "两数之和:$val"
