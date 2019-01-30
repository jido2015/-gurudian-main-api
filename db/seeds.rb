# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  puts "Adding users..."
  user = User.new
  user.last_name = "Olajide"
  user.first_name = "Bashorun"
  user.birthdate = "1/10/1991"
  user.email = "bashorunolajide@gmail.com"
  user.password_digest = "bashorun1991"
  user.save!
  puts "Successfully added user: #{user.email}"
  user.add_role :admin
  puts "Successfully added 'admin' role to user: #{user.email}"
end