# The names of the cities should be stored in a file instead of an array

class Car
  
  def initialize(noise)
    @noise = noise
    @cities = []
  end

  def make_noise
    puts @noise
  end
  
  def visit_city(city)
    cities = IO.readlines("cities.txt")
    cities << city
    IO.write("cities.txt", cities.join("\n"))
  end
  
  def cities
    IO.readlines("cities.txt")
  end
  
  def self.make_noise_twice(car)
    car.make_noise
    car.make_noise
  end
end

car = Car.new("Brooom!")
car.visit_city("Barcelona")
car.visit_city("Madrid")
puts car.cities