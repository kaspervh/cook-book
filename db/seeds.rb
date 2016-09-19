# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{username: "kaspervh", email: "kaspervhauschildt@gmail.com", password: "tvebakk1", role: "admin", created_at: Time.now},
{username: "kalle", email: "kalle@gmail.com", password: "tvebakk1", role: "student"}, 
{username: "christian", email: "christian@gmail.com", password: "tvebakk1", role: "mentor", created_at: Time.now },
username: "kim", email: "punktum.punktum@punktum.dk", password: "tvebakk1", role: "teacher"])

AdminSubject.create([{name: "Ruby on Rails"}])