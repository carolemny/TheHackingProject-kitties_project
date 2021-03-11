require 'faker'

JoinItemCart.destroy_all
JoinItemOrder.destroy_all
Order.destroy_all
Cart.destroy_all
Item.destroy_all

20.times do |i|
    item = Item.new(
    title: Faker::Creature::Cat.name, 
    description: Faker::Lorem.paragraph, 
    price: rand(10...250)
    )
    item.picture.attach(io: File.open("db/cat/cat#{i+1}.jpg"), filename: "cat.jpg", content_type: 'image/jpeg')
    item.save
end

