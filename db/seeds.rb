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
  users.each { |user| user.microposts.create!(content: content, youtuber_id: rand(20)) }
end

users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

Rake::Task['youtube:list_channels'].invoke