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

  it "is not valid without a venue_type" do
    venue = FactoryGirl.build(:venue, venue_type: nil)
    expect(venue).to_not be_valid
  end

  it "should provide the list of available venue types" do
    expect(Venue::VENUE_TYPES).to eq(%w[meeting social])
  end
end
