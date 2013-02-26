class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name, :null => false
      t.string :street_address, :null => false
      t.string :city, :null => false, :default => "Atlanta"
      t.string :state, :null => false, :default => "GA"
      t.string :zip, :null => false
      t.text :notes
      t.text :map_url

      t.timestamps
    end
  end
end
