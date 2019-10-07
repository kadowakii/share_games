User.create!(
  name: "root",
  email: "root@example.com",
  password: "root",
)

100.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@example.com"
  password = "password"
  User.create!(
    name: name,
    email: email,
    password: password,
  )
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.microposts.create!(content: content) }
end