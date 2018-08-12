# encoding: UTF-8

=begin
 @file:  hash.rb
 @brief:  ruby散列对象初识
 @author: feihu1996.cn
 @date:  18-08-12
 @version: 1.0
=end

# 符号是轻量级的字符串，\
# 一般作为名称标签使用，\
# 表示方法等的对象的名称\
# 要创建符号，只需在标识符的开头加上":"
symbol = :foo
symbol1 = :"foo"
p(symbol)
p(symbol1)

# 符号和字符串可以互转
puts(symbol.to_s)  # 将符号转换为字符串
puts(symbol.to_s.to_sym)  # 将字符串转换为符号 

# 在散列中，\
# 一般是以字符串或者符号或者数值作为键,\
# 来保存对应的对象\
# 散列的键使用符号比使用字符串会更加有效率
address = {
    "name": "feihu1996",
    "gender": "male",
    "age": 18
}
address1 = {
    :name => "feihu1996",
    :gender => "male",
    :age => 18
}
address2 = {  # 把符号当作键时的简短写法
    name: "feihu1996",
    gender: "male",
    age: 18
}
p(address)
p(address1)
p(address2)

# 从散列取出对象
p(address[:name])

# 将对象保存到散列
address[:tele] = "111-111"
p(address)

# 使用each方法遍历散列
res = address.each do |key, value|
    puts("#{key}: #{value}")
end
p(res)  # 输出each方法的返回值
