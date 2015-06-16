# Extend  car class with a racing car class whose noise will always be “BROOOM” no matter what

class Car
  def initialize(noise)
    @noise = noise
  end

  def make_noise
    puts @noise
  end
end

class RacingCar < Car
  def initialize
    super("BROOOOOOM!")
  end
end

racing_car = RacingCar.new
racing_car.make_noise