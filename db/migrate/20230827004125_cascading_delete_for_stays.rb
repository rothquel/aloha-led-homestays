class CascadingDeleteForStays < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :stays, :hosts
    add_foreign_key :stays, :hosts, on_delete: :cascade
  end
end
