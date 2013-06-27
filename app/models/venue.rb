class Venue < ActiveRecord::Base
  VENUE_TYPES = %w[meeting social]

  validates_presence_of :name, :street_address, :city, :state, :zip, :venue_type
end
