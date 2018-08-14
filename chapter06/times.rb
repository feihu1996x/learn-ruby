# encoding: UTF-8

=begin
    @file: times.rb
    @brief:  Ruby循环之times方法
    @author: feihu1996.cn
    @date:  18-08-15
    @version: 1.0
=end

# 将字符串连续输出 7 次
7.times do
    puts(" 满地油菜花 ")
end

# 将字符串连续输出 7 次
# 使用大括号
7.times {
    puts(" 满地油菜花 ")
}

# 获知块中当前的循环次数
5.times do |i|
    puts(" 第 #{i+1} 次的循环。")
end
