# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

doctor =   Doctor.create(name:"John Thomas",specialization:"Surgeon",practice_from:"1st January 2019",professional_statement:"Been good practicing in the medical field")

# 5.times do |i|
#   Doctor.create(name:"Doctor ##{i}",specialization:"Surgeon",practice_from:"1st January 2019",professional_statement:"Been good practicing in the medical field")
# end