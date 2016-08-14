# A car needs to hold the names of the cities it visits. 
# A car should have a method cities that returns the array of names.

class Car
  
  def initialize(noise)
    @noise = noise
    @cities = []
  end

  def make_noise
    puts @noise
  end
  
  def visit_city(city)
    @cities << city
  end
  
  def cities
    @cities
  end
end

car = Car.new("Brooom!")
car.visit_city("Barcelona")
car.visit_city("Madrid")
car.visit_city("Miami")
puts car.cities