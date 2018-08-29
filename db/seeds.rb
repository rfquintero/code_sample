# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

namey = Namey::Generator.new

if(Place.count == 0)
  letters = ('a'..'z').to_a
  13.times do |i|
    Place.create(name: "Place #{i+1}", letter1: letters.shift, letter2: letters.shift)
  end
end

if(User.count == 0)
  25.times do |i|
    first, last = namey.name.split(" ")
    User.create(first_name: first, last_name: last)
  end
end