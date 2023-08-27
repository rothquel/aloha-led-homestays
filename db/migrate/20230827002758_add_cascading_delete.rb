class AddCascadingDelete < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :rooms, :hosts
    add_foreign_key :rooms, :hosts, on_delete: :cascade
  end
end
