FactoryBot.define do
  factory :slogan_contest do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    slogan { Faker::Lorem.sentence[0..49] }
  end
end
