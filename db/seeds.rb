# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(name:"Admin")
Role.create(name:"Publisher")

User.create(email:"jvejar1@miuandes.cl",password:"mwdioinfe23",role_id:1)
User.create(email:"pgrand@miuandes.cl",password:"mwfesfesesse",role_id:2)
User.create(email:"perro@miuandes.cl",password:"mwdioinfe2e",role_id:2)
User.create(email:"mgazmuri@miuandes.cl",password:"mwdioinfe22",role_id:2)



