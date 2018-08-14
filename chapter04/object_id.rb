# encoding: UTF-8

=begin
    @file: object_id.rb
    @brief: Ruby对象的同一性
    @author: feihu1996.cn
    @date:  18-08-15
    @version: 1.0
=end

# 所有的对象都有标识和值


# 标识(ID)用来表示对象的同一性
# Ruby 中所有对象都是唯一的
# 对象的ID可以通过 object_id (或者 _ _id_ _ )方法获得
ary1 = []
ary2 = []
p(ary1.object_id)
p(ary2.object_id)

# 可以用 equal? 方法判断两个对象、
# 是否为同一个对象(即ID 是否相同)
str1 = "foo"
str2 = str1
str3 = "f" + "o" + "o"
p str1.equal?(str2) #=> true
p str1.equal?(str3) #=> false


# 对象的值就是对象拥有的信息
# 使用 == 来判断对象的值是否相等
str1 = "foo"
str2 = "f" + "o" + "o"
p(str1 == str2)  #=> true

# 使用eql?方法来判断对象的值是否相等
# ==与eql? 都是Object类定义的方法
# 数值类会重定义 eql? 方法
p(1.0 == 1)  #=> true
p(1.0.eql?(1))  #=> false

# 散列对象内部的键的比较
# 使用的也是eql?方法
# 0与0.0作为散列的键时会被判断为不同的键
hash = { 0 => "0"}
p(hash[0.0])  #=> nil
p(hash[0])  #=> "0"
