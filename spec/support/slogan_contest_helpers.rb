require 'faker'
require 'factory_bot_rails'

module SloganContestsHelpers

  def create_slogan_contest
    FactoryBot.create(:slogan_contest,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      slogan: Faker::Lorem.sentence[0..49]
    )
  end

  def build_slogan_contest
    FactoryBot.build(:slogan_contest,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      slogan: Faker::Lorem.sentence[0..49]
    )
  end

end