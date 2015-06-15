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
