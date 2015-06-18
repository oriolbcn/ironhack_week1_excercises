class FizzBuzz
  
  def initialize(conditions)
    @conditions = conditions
  end
  
  def run
    1.upto(100) do |i|
      print_number(i)
    end
  end
  
  def print_number(number)
    result = ""

    @conditions.each do |condition|
      condition_result = condition.call(number)
      if condition_result
        result += condition_result
      end
    end
    
    if result == ""
      puts number
    else
      puts result
    end
  end
end

fizz = lambda do |i| 
  if i % 3 == 0
    return "fizz"
  end
end

buzz = lambda do |i| 
  if i % 5 == 0
    return "buzz"
  end
end

paff = lambda do |i|
  if i % 10 == 0
    return "paff"
  end
end

FizzBuzz.new([fizz, buzz, paff]).run