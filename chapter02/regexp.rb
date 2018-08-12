# encoding: UTF-8

=begin
 @file:  regexp.rb
 @brief:  Ruby正则表达式对象初识
 @author: feihu1996.cn
 @date:  18-08-12
 @version: 1.0
=end

# 创建一个正则表达式对象,\
# 也即模式
pattern = /Ruby/
p(pattern)

# 使用=~运算符来匹配正则表达式与字符串
# 若匹配成功，则返回匹配部分的起始位置索引
# 否则，返回nil(空对象指针)
p(pattern =~ "Yet Another Ruby Hacker.")
p(pattern =~ "Yet Another ruby Hacker.")

# 模式右边的/的后面加上i，\
# 表示不区分大小写
pattern1 = /Ruby/i
p(pattern1 =~ "Yet Another ruby Hacker.")

# 输出数组中只包含Ruby的字符串
codes = ["C/C++", "Java", "PHP", "Python", "Ruby"]
codes.each do |item|
    if /Ruby/ =~ item
        puts(item)
    end
end
