class AddFieldsToRoom < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :private_room, :boolean
    add_column :rooms, :bathroom, :string
    add_column :rooms, :title, :string
    add_column :rooms, :description, :string
    add_column :rooms, :location_in_house, :string
  end
end
