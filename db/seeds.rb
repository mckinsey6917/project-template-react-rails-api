# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding locations..."
location1 = Location.create(city: 'Chicago', name: "Trader Joe's", address: "44 East Ontario Street")
location2 = Location.create(city: 'Chicago', name: "Hot Doug's", address: "3324 North Califronia St.")
location3 = Location.create(city: 'Chicago', name: "Apple Store", address: "679 N Michigan Ave")
location4 = Location.create(city: 'Chicago', name: "Grahamwich", address: "615 N. State St")
location5 = Location.create(city: 'Chicago', name: "Starbucks North & Wells", address: "200-230 W. North Ave")
location6 = Location.create(city: 'Chicago', name: "Barnes & Noble Clybourn", address: "1441 W. Webster Ave")
location7 = Location.create(city: 'Chicago', name: "Broadway Youth Center", address: "3179 N Broadway St.")
location8 = Location.create(city: 'Chicago', name: "Sakura Teppanyaki & Sushi", address: "730 West Diversey Parkway")
location9 = Location.create(city: 'Chicago', name: "DePaul University", address: "2315 N Kenmore Ave")
location10 = Location.create(city: 'Chicago', name: "Filter Coffee Shop", address: "1373-75 N Milwaukee Ave")




puts "Seeding reviews..."
Review.create(user_id: 1, location_id: 10, rating: 5, comments: "Not accessible to public, need to purchase something for code")
Review.create(user_id: 1, location_id: 9, rating: 8, comments: "Very clean and open for public use!")




puts "creating admin-users..."
mckinsey = User.create(first_name: 'McKinsey', last_name: 'Leckenby', username:"mckinsey6917", password_digest: BCrypt::Password.create('mckinsey01'))
brandi = User.create(first_name: 'Brandi', last_name: 'Ude', username:"bude123", password_digest: BCrypt::Password.create('brandi01'))


puts "done seeding with admin users"
