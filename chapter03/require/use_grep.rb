# encoding: UTF-8

=begin
 @file:  use_grep.rb
 @brief:  Ruby程序中引入库文件
 @author: feihu1996.cn
 @date:  18-08-13
 @version: 1.0
=end

=begin
- 库(library)是被其他程序引用的程序
- Ruby 使用 require 方法或者 require_relative 方法来引用库
- require 方法用于引用已存在的库, \
  只需要指定库名,程序就会在预先定义好的路径下查找\
  并读取与 Ruby 一起安装的库
- require_relative 方法在查找库时,\
  是根据执行中的程序目录(文件夹)来进行的
- 库名可以省略后缀 .rb
- 调用 require 方法后,Ruby 会搜索参数指定的库,并读取库的所有内容
- 库内容读取完毕后,程序才会执行 require 方法后面的处理  
=end

# 读取 grep.rb
require_relative "grep"
# 读取date
require("date")

pattern = Regexp.new("pattern")
filename = "grep.rb"
# 调用 simple_grep 方法
simple_grep(pattern, filename)

ruby_days = Date.today - Date.new(1993, 2, 24)
# 输出ruby的年龄（天数）
puts(ruby_days.to_i)
