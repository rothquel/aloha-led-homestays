class ConnectRoomsToHost < ActiveRecord::Migration[7.0]
  def change
    add_reference :rooms, :host, foreign_key: true
  end
end
