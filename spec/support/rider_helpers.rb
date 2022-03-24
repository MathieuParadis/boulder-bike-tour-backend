require 'faker'
require 'factory_bot_rails'

module RidersHelpers

  def create_rider
    FactoryBot.create(:rider,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      city: Faker::Address.city,
      state: Faker::Address.state,
      img_url: "https://images.generated.photos/RtB7Q_PuFIq3VNbhficlB3dTJTVdtcZkQt5aqbWQgLM/rs:fit:256:256/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy8wMDkz/ODg4LmpwZw.jpg",
      position:
        {
          lat: 40.01,
          lgn: -105.32,
        }
    )
  end

    def build_rider
    FactoryBot.build(:rider,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      city: Faker::Address.city,
      state: Faker::Address.state,
      img_url: "https://images.generated.photos/RtB7Q_PuFIq3VNbhficlB3dTJTVdtcZkQt5aqbWQgLM/rs:fit:256:256/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy8wMDkz/ODg4LmpwZw.jpg",
      position:
        {
          lat: 40.01,
          lgn: -105.32,
        }
    )
  end

end