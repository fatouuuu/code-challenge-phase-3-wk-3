require_relative '../config/environment'

# user
user1 = User.first

pp user1.reviews
pp user1.products
user1.favorite_product
user1.remove_reviews

# review
review2 = Review.second

pp review2.user
pp review2.product
pp review2.print_review

# product  
product3 = Product.third

pp product3.reviews
pp product3.users
# product3.leave_review
pp product3.print_all_reviews