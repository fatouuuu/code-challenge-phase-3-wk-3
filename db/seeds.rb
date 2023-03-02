puts "🌱 Seeding data..."

20.times do
    product = Product.create(
      name: Faker::Commerce.product_name,
      price: rand(0..60)
    )
  
    rand(1..5).times do
      Review.create(
        product_id: product.id,
        star_rating: rand(1..5),
        comment: Faker::Lorem.sentence         
      )
    end
  end

  20.times do
    user = User.create(
      name: Faker::Name.name
    )
  end

  
user1 = User.first
review2 = Review.second
user1.reviews << review2

user2 = User.second
review1 = Review.first
user2.reviews << review1


  
puts "🌱 Done seeding!"