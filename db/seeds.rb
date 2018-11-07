# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating restaurants"

# 5.times do
  Restaurant.create!(category: "italian", name: "italian", address: "Italian street", phone_number: "0198274490")
  print "."

  Restaurant.create!(category: "chinese", name: "Chinese", address: "China Town", phone_number: "0198274490")
  print "."

  Restaurant.create!(category: "belgian", name: "Belgium", address: "Belgium avenue", phone_number: "0198274490")
  print "."

  Restaurant.create!(category: "japanese", name: "Japanese", address: "Japan road", phone_number: "0198274490")
  print "."

  Restaurant.create!(category: "french", name: "French", address: "French lane", phone_number: "0198274490")
  print "."



# end
