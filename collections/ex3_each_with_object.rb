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
