# encoding: UTF-8

=begin
 @file: condition2.rb
 @brief:  Ruby条件判断之逻辑运算符
 @author: feihu1996.cn
 @date:  18-08-15
 @version: 1.0
=end

# 逻辑与
# &&与and等价，
# 但后者优先级略低
x = 5
if x >= 1 && x <= 10
    puts("&&")
end

# 逻辑或
# ||与or等价，
# 但后者优先级略低
x = 11
if x < 1 || x > 10
    puts("||")
end

# 逻辑非
# !与not等价，
# 但后者优先级略低
x = true
p(!x)
