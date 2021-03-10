require 'faker'

Item.destroy_all

20.times do |i|
    item = Item.create(
    title: Faker::Creature::Cat.name, 
    description: Faker::Lorem.paragraph, 
    price: rand(10...250)
    )
    item.picture.attach(io: File.open("app/assets/images/cat/cat#{i+1}.jpg"), filename: "cat#{i+1}.jpg", content_type: 'image/jpg')
end
