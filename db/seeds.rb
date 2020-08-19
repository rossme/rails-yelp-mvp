# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '03929456721', category: 'chinese' }
best_burger = { name: "Best Burger", address: "100 Surrey High St, Lancaster E1 6PQ", phone_number: '06473729239', category: 'italian' }
honest_china = { name: "Honest", address: "12 High Road, Kilburn", phone_number: '03284816721', category: 'chinese' }
pizza_west = { name: "Pizza West", address: "6 Shoreham St, London E2 4TH", phone_number: '03929123351', category: 'italian' }
dishoom_park = { name: "Dishoom Park", address: "7 Walk Away, London E4 7TR", phone_number: '03283728387', category: 'italian' }

[dishoom, best_burger, honest_china, pizza_west, dishoom_park].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
