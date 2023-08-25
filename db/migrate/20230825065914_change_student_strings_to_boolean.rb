class ChangeStudentStringsToBoolean < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :host_family_preferences_kids
    remove_column :students, :host_family_preferences_pets

    add_column :students, :host_family_preferences_kids, :boolean
    add_column :students, :host_family_preferences_pets, :boolean
  end
end
