User.delete_all
puts "Users cleared"

jay = User.create(
  email: "jay@miura.com",
  password: "123456",
  first_name: "Jay",
  last_name: "Miura"
)

jay.save!
puts "#{jay.first_name} created"

ayako = User.create(
  email: "ayako@miura.com",
  password: "123456",
  first_name: "Ayako",
  last_name: "Miura"
)

ayako.save!
puts "#{ayako.first_name} created"

nic = User.create(
  email: "nic@miura.com",
  password: "123456",
  first_name: "Nic",
  last_name: "Rothquel"
)

nic.save!
puts "#{nic.first_name} created"
