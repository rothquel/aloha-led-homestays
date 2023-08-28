class AddNumberOfRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :number_of_rooms, :integer
  end
end
