class Venue < ActiveRecord::Base
  attr_accessible :city, :map_url, :name, :notes, :state, :street_address, :zip
end
