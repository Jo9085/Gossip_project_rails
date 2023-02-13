Gossip.destroy_all
User.destroy_all
City.destroy_all

10.times do
    City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, description: Faker::Lorem.sentence(word_count: 10), email: Faker::Internet.email, age: Faker::Number.between(from: 15, to: 35), city: City.all.sample)
end

20.times do
    Gossip.create(title: Faker::Movie.title, content: Faker::Quote.yoda, user: User.all.sample)
end
