# encoding: UTF-8

=begin
 @file: variable.rb
 @brief: Ruby中的变量 
 @author: feihu1996.cn
 @date:  18-08-13
 @version: 1.0
=end

=begin
Ruby 中有五种类型的变量

一、局部变量
以英文小写字母或者 _ 开头

二、全局变量
以 $ 开头
全局变量的值在程序的任何地方都可以修改

三、实例变量
以 @ 开头

四、类变量
以 @@ 开头

五、伪变量
Ruby 预先定义好的代表某特定值的特殊变量
即使我们在程序中给伪变量赋值,它的值也不会改变
nil 、 true 、 false 、 self 等都是伪变量
=end

$x = 0  # 对全局变量赋值
x = 0  # 对局部变量赋值

# 引入sub库
require_relative("sub")

p($x)  #=>1
p(x)  #=>0
