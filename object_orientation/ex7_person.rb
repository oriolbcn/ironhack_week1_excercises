# Create a class Person that has 2 attributes. Name and age. 
# The name of the person must be a read only attribute.
#
# Both attributes must be set on construction

class Person
  
  attr_reader :name
  attr_accessor :age  
  
  def initialize(name, age)
    @name = name
    @age = age
  end
end

p = Person.new("John", 42)
puts p.age
p.age = "18"
puts p.age
