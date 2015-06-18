# array = [1, 2, 3]
array.each do |i|
  puts i
end

class TestClass
  
  def do_stuff(&lmabda)
    puts "I am doing stuff"
    lambda.call
    puts "I am doing more stuff"
  end
end

TestClass.new.do_stuff do
  puts "I am inside the block!"
end