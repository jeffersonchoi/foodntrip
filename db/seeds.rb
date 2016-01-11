# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(email: 'jefferson@test.com', password: 'Password1!', first_name: 'Jefferson', last_name: 'Choi', gender: 'male', dob: Date.new(1991,9,12), role: "super_admin")
u2 = User.create(email: 'shadow@test.com', password: 'Password1!', first_name: 'Shadow', last_name: 'Wong', gender: 'female', dob: Date.new(1993,7,19), role: "super_admin") 
