# encoding: UTF-8

=begin
 @file: case.rb
 @brief:  Ruby条件判断之case语句
 @author: feihu1996.cn
 @date:  18-08-15
 @version: 1.0
=end

# case 语句在判断与 when 指定的值是否相等时,
# 实际上是使用 === 运算符来判断的
# 相比==单纯地判断两边的值是否相等,
# ===能表达更加广义的“相等”
p (/zz/ === "xyzzy")  #=> true
p (String === "xyzzy")  #=> true
p ((1..3) === 2)  #=> true

# 根据对象值的不同,执行不同的处理
tags = [ "A", "IMG", "PRE" ]
tags.each do |tagname|
    case tagname
    when "P", "A", "I", "B", "BLOCKQUOTE" then
        puts("#{tagname} has child.")
    when "IMG", "BR" then
        puts("#{tagname} has no child.")
    else
        puts("#{tagname} cannot be used.")
    end
end

# 根据对象类型的不同,执行不同的处理
array = [ "a", 1, nil ]
array.each do |item|
    case item
    when String then
        puts("#{item} is a String.")
    when Numeric then
        puts("#{item} is a Numeric.")
    else
        puts("#{item} is something.")
    end
end

# 等价的if语句
# when 指定的对象在 === 的左边
array = [ "a", 1, nil ]
array.each do |item|
    if String === item then
        puts("#{item} is a String.")
    elsif Numeric === item then
        puts("#{item} is a Numeric.")
    else
        puts("#{item} is something.")
    end
end

# 根据正则表达式的匹配结果进行不同处理
text = File.open("README.md").read
text.each_line do |line|
    case line
    when /^From:/i then
        puts(" 发现寄信人信息 ")
    when /^To:/i then
        puts(" 发现收信人信息 ")
    when /^Subject:/i then
        puts(" 发现主题信息 ")
    when /^$/ then  # 空行
        puts(" 头部解析完毕 ")
        exit  # 结束程序
    else
        ## 跳出处理
    end
end
