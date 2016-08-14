# Create a class method called speed_control that asks the user the current speed 
# and shows a message if the speed is above 100.

class Car
  def initialize(noise)
    @noise = noise
  end

  def make_noise
    puts @noise
  end
  
  def self.speed_control
    puts "You just arrived to a speed control! Enter your current speed"
    current_speed = gets.chomp.to_i
    if current_speed > 100
      puts 'Wooooohhhhh slow down'
    end
  end
end

car = Car.new("Brooom")
Car.speed_control