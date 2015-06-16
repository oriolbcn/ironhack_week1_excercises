# We have a list of cars and we want a single string with all the sound names concatenated

class Car
  attr_reader :sound
  
  def initialize(sound)
    @sound = sound
  end
  
  def make_noise
    puts @sound
  end
end


cars = [Car.new("Broom"), Car.new("Nyan"), Car.new("Meeek")]

all_sounds = cars.reduce("") do |sounds, car|
  sounds = sounds + car.sound
end

puts all_sounds