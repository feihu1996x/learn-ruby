# encoding: UTF-8

=begin
 @file:  read_file.rb
 @brief:  Ruby读取文件
 @author: feihu1996.cn
 @date:  18-08-13
 @version: 1.0
=end

# 打开文件
file = File.open("changeLog")

# 读取文件的文本数据
text = file.read

# 输出文件的文本数据
print(text)

# 关闭文件
file.close

puts("\n=======================")

=begin
    直接使用 read 方法读取文件内容并输出
=end
print(File.read("changeLog"))

puts("\n=======================")

=begin
    从文件中逐行读取内容并输出
=end

file2 = File.open("changeLog")

file2.each_line do |line|
    puts(line)
end
file2.close

puts("\n=======================")

=begin
    从文件中读取指定模式的内容并输出
=end

# Regexp.new (str) 表示把字符串 参数str\
# 转换为正则表达式对象
pattern = Regexp.new("Usaku")
filename = "changeLog"

file3 = File.open(filename)
file3.each_line do |line|
    if pattern =~ line
        puts(line)
    end
end

file3.close
