class AddFieldsToStays < ActiveRecord::Migration[7.0]
  def change
    create_table :stays do |t|
      t.references :student, foreign_key: true
      t.references :host, foreign_key: true
      t.references :room, foreign_key: true
    end
  end
end
