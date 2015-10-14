# The names of the cities should be stored in a file instead of an array

class Car
   
  attr_accessor :noise
  
  def initialize(noise)
    @noise = noise
  end

  def make_noise
    puts noise
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
class RacingCar < Car
  
  def initialize
    @noise = "BROOOOOM"
  end
end

racing_car = RacingCar.new
racing_car.make_noise

car = Car.new
car.noise
car.noise = "Broooom"