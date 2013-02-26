class Venue < ActiveRecord::Base
  attr_accessible :city, :map_url, :name, :notes, :state, :street_address, :zip

  validates_presence_of :name, :street_address, :city, :state, :zip
end
