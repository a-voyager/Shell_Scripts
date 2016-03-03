#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# input file name
echo -e"prepare to use 'touch' command to create 3 files"
read -p"Please input file name" filename

# 为避免使用者随意按回车键，利用变量功能分析档案名是否有配置
file=${filename:-"file"}

# 利用Date命令命名
date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=$(date +%Y%m%d)

file1=${file}${date1}
file2=${file}${date2}
file3=${file}${date3}

touch "$file1"
touch "$file2"
touch "$file3"
