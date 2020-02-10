# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..20
    User.create(
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )
    puts "Created #{i} users"
end

for i in 1..20
    Manufacturer.create(
        name: Faker::Company.name,
        location: Faker::Address.country
    )
    puts "Created #{i} manufacturers"
end

for i in 1..30
    Toy.create(
        name: Faker::DcComics.hero,
        description: Faker::Hipster.paragraph,
        user_id: Faker::Number.between(from: 1, to: 20),
        manufacturer_id: Faker::Number.between(from: 1, to: 20)
    )
    puts "Created #{i} toys"
end