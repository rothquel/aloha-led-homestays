class AddCascadingDeleteToStudents < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :stays, :students
    add_foreign_key :stays, :students, on_delete: :cascade
    remove_foreign_key :stays, :rooms
    add_foreign_key :stays, :rooms, on_delete: :cascade
  end
end
