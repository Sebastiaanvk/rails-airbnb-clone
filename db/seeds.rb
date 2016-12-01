# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Reservation.destroy_all
Motorcycle.destroy_all

10.times do
  motorcycle = Motorcycle.new(
    name: Faker::Hipster.sentence(3),
    user_id: 1,
    brand: Faker::Hipster.sentence(1),
    model: Faker::Number.between(10, 100) * 10,
    year: Faker::Number.between(1900, 2016),
    city: 'Barcelona',
    address: 'Barcelona',
    license_plate: Faker::Number.number(8),
    availability: true,
    photo_urls: ["http://lorempixel.com/640/480/transport"]
    price: rand(1..300)

  )
motorcycle.save
end
