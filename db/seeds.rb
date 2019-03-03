# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movie1 = Movie.new(title: "fellowship of the ring: extended edition", runtime: 228)
movie1.save
movie2 = Movie.new(title: "two towers: extended edition", runtime: 235)
movie2.save
movie3 = Movie.new(title: "return of the king: extended edition", runtime: 251)
movie3.save