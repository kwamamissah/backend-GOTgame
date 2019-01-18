# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.destroy_all

10.times do
  character = Character.create(
    name: Faker::GameOfThrones.unique.character,
    alive: true,
    image: Faker::LoremPixel.image("200x200")
  )
end

10.times do
  u = User.create(
    name: Faker::TheFreshPrinceOfBelAir.character,
    email: Faker::Internet.email,
    password_digest: Faker::Beer.hop,
  )
  Game.create(user_id: u.id, score: rand(100))
end
