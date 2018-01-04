FactoryGirl.define do
  factory :product do
    name { Faker::Lorem.word }
    type { Faker::Book.genre }
    color_number { Faker::Color.hex_color }
    color_name { Faker::Color.color_name }
    ingredients { Faker::Lorem.words(4) }
    brand_id nil
  end
end
