# encoding: UTF-8

=begin
 @file:  class.rb
 @brief:  Ruby类初识
 @author: feihu1996.cn
 @date:  18-08-13
 @version: 1.0
=end

require("pp")

=begin
所有 Ruby 对象其实都是某个类的实例
我们也可以按照实际需要自定义新的类
=end

# 类与Ruby对象的对应关系
class_to_object = {
    :Numeric => "数值对象",
    :String => "字符串对象",
    :Array => "数组对象",
    :Hash => "散列对象",
    :Regexp => "正则表达式对象",
    :File => "文件对象",
    :Symbol => "符号"
}

pp(class_to_object)
