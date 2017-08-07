users_desired = 50
users_existing = User.all.count

(users_desired - users_existing).times do
  username = "#{Faker::Name.first_name}.#{Faker::Name.last_name}"
  username.downcase!

  email = Faker::Internet.safe_email(username)

  User.create(username: username, email: email, password: "password")
end
