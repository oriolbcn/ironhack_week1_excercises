class Car
  
  def move(command)
    command.run
  end
  
  def undo_move(command)
    command.undo
  end
end

class MoveCommand
  def initialize(direction, speed, distance)
    @direction = direction
    @speed = speed
    @distance = distance
  end
  
  def run
    puts "The car is moving to #{@direction} at #{@speed} km/h during #{@distance} m"
  end
  
  def undo
    puts "The car is moving contraty to #{@direction} at #{@speed} km/h during #{@distance} m"
  end
end

car = Car.new
command = MoveCommand.new('north', 40, 200)
car.move(command)
car.undo_move(command)