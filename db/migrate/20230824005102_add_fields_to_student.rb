class AddFieldsToStudent < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    add_column :students, :gender, :string
    add_column :students, :date_of_birth, :date
    add_column :students, :home_address, :string
    add_column :students, :email, :string
    add_column :students, :phone_number, :string
    add_column :students, :line_account, :string
    add_column :students, :occupation, :string
    add_column :students, :school_in_japan, :string
    add_column :students, :program_in_hawaii, :string
    add_column :students, :emergency_contact_name, :string
    add_column :students, :emergency_contact_relationship, :string
    add_column :students, :emergency_contact_phone, :string
    add_column :students, :emergency_contact_email, :string
    add_column :students, :host_family_preferences_kids, :string
    add_column :students, :host_family_preferences_pets, :string
    add_column :students, :allergies, :boolean
    add_column :students, :allergies_details, :string
    add_column :students, :hobbies, :string
    add_column :students, :smoker, :boolean
    add_column :students, :arrival_in_hawaii, :datetime
    add_column :students, :arriving_flight_number, :string
    add_column :students, :departure_from_hawaii, :datetime
    add_column :students, :returning_flight_number, :string
  end
end
