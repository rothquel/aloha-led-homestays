class AddFieldsToStays < ActiveRecord::Migration[7.0]
  def change
    add_reference :stays, :student, foreign_key: true
    add_reference :stays, :host, foreign_key: true
    add_reference :stays, :room, foreign_key: true
  end
end
