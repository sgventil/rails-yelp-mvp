# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

puts 'Cleaning Database'

Restaurant.destroy_all

puts 'Creating Restaurants'

CATEGORIES = %w[chinese italian japanese french belgian].freeze

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: CATEGORIES.sample
  )
  puts "Restaurant with ID - #{restaurant.id} has been"
end
puts 'Finished'
