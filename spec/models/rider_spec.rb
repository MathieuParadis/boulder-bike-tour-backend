require 'rails_helper'

RSpec.describe Rider, type: :model do

  before (:all)do
    @rider = FactoryBot.build(:rider)
  end

  after (:all) do
    Rider.destroy_all
  end

  it "is valid with valid attributes" do
    expect(@rider).to be_valid
  end

  it "is not valid without first name" do
    rider = FactoryBot.build(:rider, first_name: nil)
    expect(rider).to_not be_valid
  end

  it "is not valid without last name" do
    rider = FactoryBot.build(:rider, last_name: nil)
    expect(rider).to_not be_valid
  end

  it "is not valid without city" do
    rider = FactoryBot.build(:rider, city: nil)
    expect(rider).to_not be_valid
  end

  it "is not valid without state" do
    rider = FactoryBot.build(:rider, state: nil)
    expect(rider).to_not be_valid
  end

  it "is not valid without image" do
    rider = FactoryBot.build(:rider, img_url: nil)
    expect(rider).to_not be_valid
  end

  it "is not valid without position" do
    rider = FactoryBot.build(:rider, position: nil)
    expect(rider).to_not be_valid
  end

end