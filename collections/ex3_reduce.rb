# Given an array with city names, return the average length of all the city names

cities = ["miami", "madrid", "barcelona"]

total_length = cities.reduce(0) { |sum, city| sum + city.size }

puts total_length / cities.size