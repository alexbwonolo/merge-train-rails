# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'admin@test.com', password: 'password1', password_confirmation: 'password1')
User.create!(email: 'admin@test.com', password: 'password1', password_confirmation: 'password1')
1..3.times do |i|
  User.create!(email: "user#{i}@test", password: 'password1', password_confirmation: 'password1')
end
1..7.times do |i|
  Article.create!(title: "Article #{i}", body: "This is article #{i}", user: User.find(User.pluck(:id).sample))
end