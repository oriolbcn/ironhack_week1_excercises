# We have a list of strings. We want to turn it into a dictionary of cars where 
# the key is the sound they make and the value is the car itself.

class Car
  def initialize(sound)
    @sound = sound
  end
  
  def make_noise
    puts @sound
  end
end


sounds = ["Brooom", "Meek", "Nyan"]

dict = sounds.each_with_object({}) do |sound, cars|
  cars[sound] = Car.new(sound)
end

puts dict
