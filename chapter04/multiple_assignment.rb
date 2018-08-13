# encoding: UTF-8

=begin
 @file: multiple_assignment.rb
 @brief:  Ruby多重赋值
 @author: feihu1996.cn
 @date:  18-08-13
 @version: 1.0
=end

# 只用一个表达式就能给多个变量同时赋值
a, b, c = 1, 2, 3
puts(a, b, c)

# 变量前加上 *,\
# 表示 Ruby 会将未分配的值封装为数组赋值给该变量
a, b, *c = 1, 2, 3, 4, 5
p([a, b, c]) #=> [1, 2, [3, 4, 5]]
a, * b, c = 1, 2, 3, 4, 5
p([a, b, c]) #=>[1, [2, 3, 4], 5]

# 交换变量 a 、 b 的值
a, b = 0, 1
a, b = b, a
p([a, b]) #=>[1, 0]

# 用数组进行多重赋值
ary = [1, 2]
a, b = ary
puts(a, b)

# 只是获取数组开头的元素
ary = [1, 2]
a, = ary
puts(a)
