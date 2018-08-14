# encoding: UTF-8

=begin
 @file: unless.rb
 @brief:  Ruby条件判断之unless语句
 @author: feihu1996.cn
 @date:  18-08-15
 @version: 1.0
=end

# unless 语句的用法刚好与 if 语句相反
# if 语句是条件为真时执行处理
# unless语句是条件为假时执行处理
a = 10
b = 20
unless a > b then
    puts("a不比b大")
else
    puts("a比b大")
end
