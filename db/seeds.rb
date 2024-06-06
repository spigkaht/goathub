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

puts "Clearing out your junk.."
Review.destroy_all
Offer.destroy_all
Goat.destroy_all
User.destroy_all
puts "Clean!"

emails = [
  "ben@goathub.com",
  "sam@goathub.com",
  "prez@goathub.com",
  "benj@betterrentals.com.au",
  "spigkaht@bigpond.com",
  "george@lewagon.org",
  "ben@lewagon.org"
]

first_names = [
  "Ben",
  "Sam",
  "Prescot",
  "Benji",
  "Spig",
  "George",
  "Ben"
]

last_names = [
  "Jackson",
  "Singh",
  "Palmer",
  "Bob",
  "Kaht",
  "Kettle",
  "Schembri"
]

personalities = [
  "Accessible",
  "Captivating",
  "Benevolent",
  "Responsible",
  "Punctual",
  "Profound",
  "Athletic",
  "Capable",
  "Challenging",
  "Companionly",
  "Contemplative",
  "Debonair",
  "Deep",
  "Discreet",
  "Efficient",
  "Extraordinary",
  "Farsighted",
  "Hardworking",
  "Incorruptible",
  "Inoffensive",
  "Invulnerable",
  "Lyrical",
  "Magnanimous",
  "Nonauthoritarian",
  "Painstaking",
  "Patriotic",
  "Persuasive",
  "Romantic",
  "Rustic",
  "Scrupulous",
  "Sexy",
  "Solid",
  "Steadfast",
  "Stoic",
  "Unfoolable",
  "Vivacious",
  "Well-rounded"
]

password = "goathub"
counter = 1

7.times do |i|
  user = User.create!(first_name: first_names[i], last_name: last_names[i], email: emails[i], password: password)
  puts "##{counter} done"
  counter += 1

  10.times do |i|
    goat = Goat.create!(user: user,
                 name: Faker::Fantasy::Tolkien.character,
                 price: rand(1000),
                 color: Faker::Color.color_name,
                 weight: rand(150),
                 personality: personalities.sample,
                 age: rand(30))
    file = File.open("public/images/goat#{1 + rand(13)}.jpg")
    goat.photo.attach(io: file, filename: "")
    puts "##{counter} > #{i} done"
  end
end

puts "Finished!"
