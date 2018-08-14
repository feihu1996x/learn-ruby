# encoding: UTF-8

=begin
 @file: condition.rb
 @brief:  Ruby条件判断之条件与真假值
 @author: feihu1996.cn
 @date:  18-08-15
 @version: 1.0
=end

# 字符串类的empty?方法，
# 在字符串的长度为 0 时返回 true ,
# 否则返回 false
# Ruby建议返回真假值的方法都要以 ? 结尾
p("".empty?)  #=> true
p("AAA".empty?)  #=> false


# 用正则表达式进行匹配时,
# 匹配成功返回该字符串的位置,
# 匹配失败返回 nil
p(/Ruby/ =~ "Ruby")  #=> 0
p(/Ruby/ =~ "Diamond")  #=> nil

# Ruby 认为，false 与 nil 代表假,
# 除此以外的所有值都代表真


