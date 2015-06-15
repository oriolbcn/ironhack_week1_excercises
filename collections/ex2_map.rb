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