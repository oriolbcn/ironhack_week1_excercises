# Given an Array with city names all in downcase, return another with those city names properly capitalized

cities = ["miami", "madrid", "barcelona"]

pretty_cities = cities.map { |city| city.capitalize }

puts pretty_cities
