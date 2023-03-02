# Phase 3 Active Record Code Challenge: Product Review

## Overview

This assignment requires one to create a Ruby application that models an e-commerce domain with three models: User, Review, and Product. I used Active Record to create migrations for your database schema and Active Record associations to model the relationships between your models. I have three models: User, Review and Product.

## Entity Relationship Diagram

For this code challenge, a Product has many Users, a User has many Products, and a Review belongs to a User and to a Product. Product-User is a many-to-many relationship.

## Topics Tested

This code challenge focused on testing the following topics:

- ActiveRecord Migration
- ActiveRecord Associations
- Class and Instance Methods
- ActiveRecord Querying

## Project Setup

- Clone the repository using git clone `https://github.com/fatouuuu/code-challenge-phase-3-wk-3.git`.
- Run `bundle install` to install the required dependencies.
- Run `rake db:create` to create the database.
- Run `rake db:migrate` to migrate the database schema.

## Console

To run the console, run `rake console` in the terminal. This will open the console and allow you to interact with the database.

## Deliverables

- Create the required classes and their respective methods.
- Set up your application so it runs from the configured run file.
- Create instances of the classes on the run file and try out the methods you just created.
- Use the notation # for instance methods, and .(dot) for class methods.
- Feel free to build out any helper methods if needed.

### Migrations

Before working on the rest of the deliverables, create migrations for the users, products and reviews tables. Use `seeds.rb` file to create instances for all models.

### Object Association Methods

Use Active Record association macros and Active Record query methods where

appropriate (i.e. has_many, has_many through, and belongs_to).

    
    Review
    - Returns the User instance for this Review
    - Returns the Product instance for this Review
    - Review#user
    - Review#product
    

    
    Product
    - Product#reviews
        Returns a collection of all the Reviews for the Product
    - Product#users
        Returns a collection of all the Users who reviewed the Product
    

    
    User
    - User#reviews
        Returns a collection of all the Reviews that the User has given
    - User#products
        Returns a collection of all the Products that the User has reviewed
    

Use the rake console and check that these methods work before proceeding. For
example, you should be able to call User.first.products and see a list of the products for the first user in the database based on your seed data, and Review.first.user should return the user for the first review in the database.

### Aggregate and Association Methods

    ```
    Review
    - Review#print_review
        This should puts in the terminal a string formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
    ```

    ```
    Product
    - Product#leave_review(user, star_rating, comment)
        Takes a User (an instance of the User class), a star_rating (integer), and a comment (string) as arguments, and creates a new Review in the database associated with this Product and the User
    - Product#print_all_reviews
        This should puts in the terminal a string representing each review for this product
        Each review should be formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}
    - Product#average_rating
        Returns a float representing the average star rating for all reviews for this product
    ```

    ```
    User
    - User#favorite_product
        Returns the product instance that has the highest star rating from this user
    - User#remove_reviews(product)
        Takes a Product (an instance of the Product class) and removes all of this user's reviews for that product
        You will have to delete any rows from the reviews table associated with this user and the product
    ```

## Conclusion

### What I Have Learned

This code challenge required me to create a Ruby application that models an e-commerce domain with three models: User, Review, and Product using Active Record. To complete the challenge, I created Active Record migrations, associations, and querying methods. I also created and used class and instance methods.

I implemented methods that retrieved and manipulated data from the database based on the relationships between the models. To implement the required methods, I used Active Record macros and querying methods. I also used the rake console to check that the methods I created worked as expected.

I also created extra methods to make the application more functional. For instance, I created a method that calculates the total number of reviews a product has, and a method that retrieves the product with the highest average rating.

Completing this code challenge tested my understanding of Active Record and my ability to use it to model relationships between entities in a database. I also gained more experience with Ruby and object-oriented programming.
