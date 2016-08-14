# Create Car and Engine classes.
# Both of them make their own noises.
# When Car makes noise the output is the noise of the Car plus the noise of the engine.
# Create different types of engines that should work with any car.

class Car
  def initialize(engine)
    @engine = engine
  end
  
  def sound
    "fuuuuuuu"
  end
  
  def make_noise
    puts "#{sound} #{@engine.sound}"
  end
end

class Engine
  def sound
    "Broooooooom"
  end
end

class FerrariEngine
  def sound
    "fiufiufiufiufiu"
  end
end

engine = Engine.new
car = Car.new(engine)
car.make_noise

ferrari_engine = FerrariEngine.new
ferrari = Car.new(ferrari_engine)
ferrari.make_noise