User.create!(
    email: "root@example.com",
    password:  "root",
)

100.times do |n|
  name     = Faker::Name.name
  email    = "example-#{n+1}@example.com"
  password = "password"
  User.create!(
    email: email,
    password: name,
  )
end