class Car
  def number_of_wheels
    return 4
  end
  
  def sound
    return "Brooooom"
  end
end

class Bycicle
  def number_of_wheels
    return 2
  end
  
  def sound
    return "fififififi"
  end
  
end

class Truck
  def number_of_wheels
    return 6
  end
  
  def sound
    return "BOOOOOOOOOOOOOM"
  end
end

class WheelsCounter
  def initialize(cars)
    @cars = cars
  end
  
  def count_wheels
    @cars.reduce(0) do |sum, vehicle|
      sum + vehicle.number_of_wheels
    end
  end
end

class SoundsMaker
  def initialize(vehicles)
    @vehicles = vehicles
  end
  
  def make_sounds
    @vehicles.each do |vehicle|
      puts vehicle.sound
    end
  end
end

vehicles = [Car.new, Bycicle.new, Truck.new]
number_of_wheels = WheelsCounter.new(vehicles).count_wheels
puts number_of_wheels
SoundsMaker.new(vehicles).make_sounds
