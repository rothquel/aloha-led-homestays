class Student < ApplicationRecord
  has_many :stays

  def calculate_age
    return if date_of_birth.blank?

    # Calculate the current date
    current_date = Date.today

    # Calculate the age
    age = current_date.year - date_of_birth.year

    # Adjust age if the birthdate hasn't occurred yet this year
    age -= 1 if current_date.month < date_of_birth.month || (current_date.month == date_of_birth.month && current_date.day < date_of_birth.day)

    age
  end

end
