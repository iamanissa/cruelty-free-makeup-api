# README

This is setting up an API using [Austin Kabiru's API tutorial](https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one) as a guide.

UPDATE 2024-02-16: The guide is outdated but is still is a good start.  
Did own research to make sure dependencies where up to date by cross-referencing dependency docs.
Bundler, Rails, Ruby, Postgres, and Yarn have been updated.

---

## Setup:

1. System dependencies
* ruby 3.2.1
* Rails 7.1.3

2. Database creation (Postrgresql)
```
$ rake db:create db:migrate db:seed
$ rails s
```

3. How to run the test suite (Rspec)
```
$ bundle exec rspec
```

#### Disclaimer: 
Data credit goes to [Cruelty-free Kitty](https://www.crueltyfreekitty.com/). Her data is well collected and maintained and the list, used to gather the initial data in the seed files, is free. I take no claim of the seed data and this project is just a personal project for learning and skill building purposes. 

---

## Brands
Brands include the brand `name`, `url` and `category_price`, and different cruelty-free category booleans.

<img width="700" alt="Screenshot 2024-02-22 at 1 59 36 PM" src="https://github.com/iamanissa/cruelty-free-makeup-api/assets/7739016/3aed1386-2207-4b2b-b0c9-4d45ef7c6107">

* Note: Using Postman to visualize and check endpoints

## Products
Products is each item within a brand.

## Websites
Websites is where you can purchase a brand from. brand has_many websites that a user can go to in order to purchase products from that brand.

## Stores
Where each product can be purchased with links.


