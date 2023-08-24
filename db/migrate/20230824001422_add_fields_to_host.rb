class AddFieldsToHost < ActiveRecord::Migration[7.0]
  def change
    add_column :hosts, :first_name, :string
    add_column :hosts, :last_name, :string
    add_column :hosts, :marital_status, :string
    add_column :hosts, :date_of_birth, :date
    add_column :hosts, :occupation, :string
    add_column :hosts, :employer, :string
    add_column :hosts, :home_address, :string
    add_column :hosts, :email, :string
    add_column :hosts, :home_phone_number, :string
    add_column :hosts, :work_phone_number, :string
    add_column :hosts, :student_gender_preference, :string
    add_column :hosts, :smoking_permitted, :boolean
    add_column :hosts, :student_capacity, :integer
    add_column :hosts, :internet_access, :boolean
    add_column :hosts, :pets, :boolean
    add_column :hosts, :pets_list, :string
    add_column :hosts, :languages, :string
    add_column :hosts, :reason, :text
    add_column :hosts, :special_interests, :string
    add_column :hosts, :health_concerns, :string
    add_column :hosts, :criminal_background, :boolean
    add_column :hosts, :criminal_background_detail, :string
    add_column :hosts, :agree_to_terms, :boolean
  end
end
