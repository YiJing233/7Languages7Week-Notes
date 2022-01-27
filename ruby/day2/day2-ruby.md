 一些语言必不可少的东西：集合、对象、类

Ruby里的Class，用@开头表示实例变量，

Mixin 是类似Interface的东西，用来配合单继承来实现多个方法



● Ruby用代码块和不用代码块读取文件的方法，用代码块有什么好处？
  ○ 用代码块读取文件的方法：
File.open("text.txt")  do |f|  
 puts f.gets 
end
  ○ 不用代码块读取文件的方法：
f = File.new("text.txt","r") 
puts f.gets 
f.close

	使用代码块，是一种用来打开一个单独文件的方法，而且可以在一个地方（代码块内）对该文件进行操作。相比与不用代码块而言，使用代码块显得比较干净利落。
● 如何把散列表转成数组
hash.to_a
● 如何把数组转成散列表
Hash[*array_variable.flatten] 
● 遍历散列表
 map.each {|k, v| puts "#{k}" => "#{v}"}
● Ruby 数组除了栈还可以用作哪些数据结构？
队列（请用两个栈实现一个队列） 稀疏矩阵···
●  有一个数组包含16个数，用each打印数组内容，四个一组，然后用可枚举方法each_slice重做一遍
count = 1
(1..16).to_a.each do |x|
  print(x,' ')
  puts if (count % 4) == 0
  count += 1
end
each_slice方法 (1..16).to_a.each_slice(4){ |r| puts r.join(' ')}

● 其他作业在代码文件中
