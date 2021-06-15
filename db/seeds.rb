# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


millad = User.create(email: "shadpourmillad@gmail.com", password: "password")
alexia = User.create(email: "sassia93@hotmail.com", password: "password")
Cafe.create!(name: "wtv", location: "Barcelona", user: alexia)
