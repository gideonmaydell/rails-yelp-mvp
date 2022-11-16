# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '0650247817050', category: 'japanese' }
pizza_east =  { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '0650247817050', category: 'italian' }
pasta_nord =  { name: 'Pasta Nord', address: 'Rue de Savoie 12, 1060 Brussels', phone_number: '0650247817050', category: 'italian' }
gnocchi_west =  { name: 'Gnocchi West', address: 'Westbahnstraße 19, 1070 Wien', phone_number: '0650247817050', category: 'french' }
fat_south =  { name: 'Fat South', address: 'Rooseveltlaan 147, 18988 Amsterdam', phone_number: '0650247817050', category: 'chinese' }

[dishoom, pizza_east, pasta_nord, gnocchi_west, fat_south].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
