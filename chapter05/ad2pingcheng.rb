# encoding: UTF-8

=begin
 @file: ad2pingcheng.rb
 @brief:  将公历转换为平成纪年
 @author: feihu1996.cn
 @date:  18-08-15
 @version: 1.0
=end

ad = ARGV[0].to_i
pingcheng = ad - 1988
puts(pingcheng)
