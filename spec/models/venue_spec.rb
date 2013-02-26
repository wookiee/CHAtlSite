require 'spec_helper'

describe Venue do
  it "is valid with valid attributes" do
    venue = FactoryGirl.build(:venue)
    expect(venue).to be_valid
  end

  it "is not valid without a name" do
    venue = FactoryGirl.build(:venue, name: nil)
    expect(venue).to_not be_valid
  end

  it "is not valid without a street_address" do
    venue = FactoryGirl.build(:venue, street_address: nil)
    expect(venue).to_not be_valid
  end

  it "is not valid without a city" do
    venue = FactoryGirl.build(:venue, city: nil)
    expect(venue).to_not be_valid
  end

  it "is not valid without a state" do
    venue = FactoryGirl.build(:venue, state: nil)
    expect(venue).to_not be_valid
  end

  it "is not valid without a zip" do
    venue = FactoryGirl.build(:venue, zip: nil)
    expect(venue).to_not be_valid
  end
end
