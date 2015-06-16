# We have an array of strings representing different sounds.
# Create an array of cars each of one making the noise in the string.

class Car
  def initialize(sound)
    @sound = sound
  end
  
  def make_noise
    puts @sound
  end
end


sounds = ["Brooom", "Meek", "Nyan"]

cars = sounds.map do |sound|
  Car.new(sound)
end

cars.each do |car|
  car.make_noise
end