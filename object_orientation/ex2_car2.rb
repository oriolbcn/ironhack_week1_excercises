# Modify our Car class so we can have different sounds for different cars. 
# Each car should have its own sound. 
# Create two cars. One of the should make “Broom” and the other should make “BROOOOOOM”.

class Car
  def initialize(noise)
    @noise = noise
  end

  def make_noise
    puts @noise
  end
end

normal_car = Car.new("Brooom")
normal_car.make_noise
noisy_car = Car.new("BROOOOOOM")
noisy_car.make_noise
