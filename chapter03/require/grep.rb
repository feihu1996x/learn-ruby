# encoding: UTF-8

=begin
 @file:  grep.rb
 @brief:  Ruby程序中引入库文件
 @author: feihu1996.cn
 @date:  18-08-13
 @version: 1.0
=end

def simple_grep(pattern, filename)
    file = File.open(filename)
    file.each_line do |line|
        if pattern =~ line
            print line
        end
    end
    file.close
end
