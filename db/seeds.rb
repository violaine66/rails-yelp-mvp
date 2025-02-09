# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all


puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", category: "chinese", address: "7 Boundary St, London E2 7JE")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", category: "italian", address: "56A Shoreditch High St, London E1 6PQ")
puts "Created Pizza East"
Restaurant.create!(name: "L'entrecôte", category: "french", address: "Montpellier")
puts "Created l'entrecôte"
Restaurant.create!(name: "Café Fontaine", category: "belgian", address: "Verlinghem")
puts "Created Café Fontaine"
Restaurant.create!(name: "buffet Asian", category: "japanese", address: "Perpignan")
puts "Created Buffet Asian"


puts "Finished! Created #{Restaurant.count} restaurants."
