# The names of the cities should be stored in a file instead of an array

class Car
  
  def initialize(noise)
    @noise = noise
  end

  def make_noise
    puts noise
  end
  
  def visit_city(city)
    cities = IO.readlines("cities.txt").map { |line| line.chomp }
    cities << city
    IO.write("cities.txt", cities.join("\n"))
  end
  
  def cities
    IO.readlines("cities.txt")
  end
end

car = Car.new("Broooom!")
car.visit_city("Barcelona")
car.visit_city("Madrid")
car.visit_city("Miami")
puts car.cities