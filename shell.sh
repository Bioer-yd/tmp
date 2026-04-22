# 检查文件是否存在
if [ ! -f "$LEFT_fq" ]; then
    echo "错误: 找不到输入文件 $LEFT_fq"
    exit 1
fi

# 添加log等信息
# 使用 tee 命令
your_command 2>&1 | tee log.txt

# 追加模式
your_command 2>&1 | tee -a log.txt
