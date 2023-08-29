class AddOptionsToStudentForm < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :airport_transfer, :boolean
    add_column :students, :school_transport, :boolean
  end
end
