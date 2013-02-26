class AddVenueTypeToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :venue_type, :string, :null => false, :default => "meeting"
  end
end
