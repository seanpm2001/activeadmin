# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

users = ["Jimi Hendrix", "Jimmy Page", "Yngwie Malmsteen", "Eric Clapton", "Kirk Hammett"].collect do |name|
  first, last = name.split(" ")
  User.create!  first_name: first,
                last_name: last,
                username: [first,last].join('-').downcase,
                age: rand(80),
                encrypted_password: SecureRandom.hex
end

categories = ["Rock", "Pop Rock", "Alt-Country", "Blues", "Dub-Step"].collect do |name|
  Category.create! name: name
end

tags = ["Amy Winehouse", "Guitar", "Genius Oddities", "Music Culture"].collect do |name|
  Tag.create! name: name
end

published_at_values = [Time.now.utc - 5.days, Time.now.utc - 1.day, nil, Time.now.utc + 3.days]

100.times do |i|
  user = users[i % users.size]
  cat = categories[i % categories.size]
  published = published_at_values[i % published_at_values.size]
  post = Post.create! title: "Blog Post #{i}",
                      body: "Blog post #{i} is written by #{user.username} about #{cat.name}",
                      category: cat,
                      published_date: published,
                      author: user,
                      starred: true

  if rand > 0.4
    Tagging.create!(
      tag: tags.sample,
      post: post
    )
  end
end

80.times do |i|
  ActiveAdmin::Comment.create!(
    namespace: :admin,
    author: AdminUser.first,
    body: "Test comment #{i}",
    resource: categories.sample
  )
end
