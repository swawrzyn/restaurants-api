# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

10.times do
  r = Restaurant.create(name: Faker::Coffee.blend_name,
                        address: Faker::Address.street_address,
                        description: Faker::Lorem.paragraph,
                        image: Faker::Fillmurray.image(false, 500, 150))
  5.times do
    Comment.create(restaurant: r, name: Faker::LordOfTheRings.character,
                   content: Faker::Hipster.sentences(2).join(' '),
                   image: Faker::Fillmurray.image(false, 100, 100))
  end
end
