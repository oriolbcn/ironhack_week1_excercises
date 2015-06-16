# Create an array that has 3 objects of the type Car. Call make noise on all of them

class Car
  def initialize(sound)
    @sound = sound
  end
  
  def make_noise
    puts @sound
  end
end

normal_car = Car.new("Broooom")
noisy_car = Car.new("BROOOOOOM")
quiet_car = Car.new("brrom")

car_collection = [normal_car, noisy_car, quiet_car]

car_collection.each do |car|
  car.make_noise
end