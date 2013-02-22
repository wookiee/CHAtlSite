class AddProfileImageToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_image_uri, :string
  end
end
