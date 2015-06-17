class Car

  attr_reader :sound

  def initialize(sound)
    @sound = sound
  end
end

class HTMLFormatCarReport
  def print(cars)
    result = "<html><body><ul>"
    cars.each do |car|
      result += "<li>#{car.sound}</li>"
    end
    puts result + "</ul></body></html>"
  end
end

class PlainTextFormatCarReport
  def print(cars)
    result = ""
    cars.each do |car|
      result += "* #{car.sound}\n"
    end
    puts result
  end
end

class CarSoundsReport
  
  attr_reader :cars
  
  def initialize(cars, format)
    @cars = cars
    @format = format
  end
  
  def report
    @format.print(@cars)
  end
end

car1 = Car.new("Broom")
car2 = Car.new("Meeeeek")
car3 = Car.new("Nyan")
cars = [car1, car2, car3]

CarSoundsReport.new(cars, HTMLFormatCarReport.new).report
CarSoundsReport.new(cars, PlainTextFormatCarReport.new).report