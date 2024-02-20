# README

This is setting up an API using [Austin Kabiru's API tutorial](https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one) as a guide.

UPDATE 2024-02-16: The guide is outdated but still is a good start.  
Did own research to make sure dependencies where up to date by cross-referencing docs.
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
Data credit goes to [Cruelty-free Kitty](https://www.crueltyfreekitty.com/). Her data is well collected and maintained and the list, used to gather the data, is free. I take no claim of data and this project is just a personal project for learning and skill building purposes. 

---

## Brands
Brands include the brand `name` and `category_price`.
`category_price` is meant to categorize how expensive a brand is.

<img width="700" alt="Screenshot 2024-02-20 at 5 58 41 PM" src="https://github.com/iamanissa/cruelty-free-makeup-api/assets/7739016/aba5a08a-f602-4ab5-bb4c-f03ed064ee6b">

* Note: Using Postman to visualize and check endpoints

## Products
Products is each item within a brand.

## Websites
STI where there will be an official_website that belongs to a brand, and then brand has_many purchase_websites that a user can go to in order to purchase products from that brand.


