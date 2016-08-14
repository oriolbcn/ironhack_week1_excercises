# Create a class CarDealer which has an inventory of cars. We want to be able to quickly locate all Cars of a given brand to show 
# them to customers.
#
# We should be able to get all the cars of a brand with: car_dealer.cars(“Ford”)
#
# We also need a method to print the inventory in a form like:
# Ford: Fiesta, Mustang
# Peugeot: 306, 308

class CarDealer
  
  attr_reader :inventory
  
  def initialize(inventory)
    @inventory = inventory
  end
  
  def cars(brand)
    inventory[brand]
  end
  
  def print
    inventory.each do |brand, cars|
      puts "#{brand}: #{cars.join(', ')}"
    end
  end
  
end

dealer = CarDealer.new({"Ford" => ["Fiesta", "Mustang"],
                        "Peugeot" => ["306", "308"]})

puts dealer.cars("Ford")
dealer.print