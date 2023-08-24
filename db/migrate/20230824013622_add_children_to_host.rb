class AddChildrenToHost < ActiveRecord::Migration[7.0]
  def change
    add_column :hosts, :children, :boolean
    add_column :hosts, :children_list, :string
    add_column :hosts, :other_residents, :string
  end
end
