# encoding: UTF-8

=begin
 @file: p_and_pp.rb
 @brief:  pp方法
 @author: feihu1996.cn
 @date:  18-08-13
 @version: 1.0
=end

require("pp")

people = [
    { name: "a", gender: "male" },
    { name: "b", gender: "female" },
    { name: "c", gender: "male" },
    { name: "d", gender: "female" },
    { name: "e", gender: "male" },
]

p(people)
puts("\n========================")
pp(people)
