class Venue < ActiveRecord::Base
  VENUE_TYPES = %w[meeting social]

  attr_accessible :city, :map_url, :name, :notes, :state, :street_address, :zip, :venue_type

  validates_presence_of :name, :street_address, :city, :state, :zip, :venue_type
end
