# encoding: UTF-8

=begin
 @file:  arrays.rb
 @brief:  ruby数组对象初识
 @author: feihu1996.cn
 @date:  18-08-12
 @version: 1.0
=end

# 数组的创建
names = ["a", "b", "c", "d"]

# 从数组中抽取对象
puts(names[0])

# 将对象保存到数组中
names[0] = "Hello,World!"
p(names)

# 动态数组
# 数组的大小是按照实际情况自动调整的
names[4] = "Hello,Ruby!"
p(names)

# 任何对象都可以作为数组元素保存到数组中
mixed = [1, 2, 3, "ha", "hehe", false]
p(mixed)

# 用size方法获取数组的大小
puts(mixed.size)

# 用each方法遍历数组
# do ~ end之间的部分被称为块
# each这样的方法也被称为带块的方法
res = names.each do |item|
    puts(item)
end
p(res)  # 输出each方法的返回值
