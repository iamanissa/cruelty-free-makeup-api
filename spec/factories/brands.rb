FactoryBot.define do
  factory :brand do
    name { Faker::Lorem.word }
    url { Faker::Internet.url }
    price_category { Faker::Games::LeagueOfLegends.rank }
  end
end
