require 'rails_helper'

RSpec.describe SloganContest, type: :model do

  before (:all)do
    @slogan_contest = FactoryBot.build(:slogan_contest)
  end

  after (:all) do
    SloganContest.destroy_all
  end

  it "is valid with valid attributes" do
    expect(@slogan_contest).to be_valid
  end

  it "is not valid without first name" do
    slogan_contest = FactoryBot.build(:slogan_contest, first_name: nil)
    expect(slogan_contest).to_not be_valid
  end

  it "is not valid without last name" do
    slogan_contest = FactoryBot.build(:slogan_contest, last_name: nil)
    expect(slogan_contest).to_not be_valid
  end

  it "is not valid without email" do
    slogan_contest = FactoryBot.build(:slogan_contest, email: nil)
    expect(slogan_contest).to_not be_valid
  end

  it "is not valid with invalid email" do
    slogan_contest = FactoryBot.build(:slogan_contest, email: "jocelin.com")
    expect(slogan_contest).to_not be_valid
  end

  it "is not valid without slogan" do
    slogan_contest = FactoryBot.build(:slogan_contest, slogan: nil)
    expect(slogan_contest).to_not be_valid
  end

  it "is valid with a slogan containg 1 character" do
    slogan_contest = FactoryBot.build(:slogan_contest, slogan: "A")
    expect(slogan_contest).to be_valid
  end

  it "is valid with a slogan containg 50 characters" do
    slogan_contest = FactoryBot.build(:slogan_contest, slogan: "This whole sentence is precisely fifty characters.") # 50 characters
    expect(slogan_contest).to be_valid
  end

  it "is not valid with a slogan containg over 50 characters" do
    slogan_contest = FactoryBot.build(:slogan_contest, slogan: "This whole sentence is precisely fifty characters!!") # 51 characters
    expect(slogan_contest).to_not be_valid
  end

end