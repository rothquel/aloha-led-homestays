User.delete_all
puts "Users cleared"

jay = User.create(
  email: "jay@alohaledhomestay.com",
  password: "AlohaLed123",
  first_name: "Jay",
  last_name: "Miura"
)

jay.save!
puts "#{jay.first_name} created"

ayako = User.create(
  email: "ayako@alohaledhomestay.com",
  password: "AlohaLed123",
  first_name: "Ayako",
  last_name: "Miura"
)

ayako.save!
puts "#{ayako.first_name} created"

nic = User.create(
  email: "nic@alohaledhomestay.com",
  password: "AlohaLed123",
  first_name: "Nic",
  last_name: "Rothquel"
)

nic.save!
puts "#{nic.first_name} created"

Stay.delete_all
puts "Stays cleared"

Room.delete_all
puts "Rooms cleared"

Student.delete_all
puts "Students cleared"

Host.delete_all
puts "Hosts cleared"

host1 = Host.create(
  first_name: "Harry",
  last_name: "Potter",
  marital_status: "Married",
  date_of_birth: DateTime.new(1975, 6, 22),
  occupation: "Wizard",
  home_address: "3276 Kanekopa pl, Honolulu 96816",
  email: "harry@potter.com",
  home_phone_number: "808 123 1234",
  work_phone_number: "808 234 2344",
  student_gender_preference: "Male",
  smoking_permitted: false,
  internet_access: true,
  pets: true,
  pets_list: "Cat and dog",
  languages: "Japanese",
  reason: "To care for people",
  special_interests: "Magic",
  health_concerns: "Scar on face",
  criminal_background: false,
  criminal_background_detail: "",
  agree_to_terms: true,
  children: true,
  children_list: "Harry Jr, 13",
  other_residents: "Ginny Weasley - wife"
)

host1.save!
puts "#{host1.first_name} created"
