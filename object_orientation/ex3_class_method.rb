class Car
  def initialize(noise)
    @noise = noise
  end

  def make_noise
    puts @noise
  end
  
  def self.make_noise_twice(car)
    car.make_noise
    car.make_noise
  end
end

car = Car.new("Brooom")
Car.make_noise_twice(car)