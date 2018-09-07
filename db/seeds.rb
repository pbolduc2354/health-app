# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name:"Audrey", last_name:"Des-Pic", email:"audreydespic@hotmail.com", password:"1q2w3e", city:"Saint-jean-port-joli", family_doctor:"Yves Bolduc", sex:"Women", age:25, note:"Has many boyfriend problems (he's a programer).")
User.create(first_name:"Chantal", last_name:"Trépanier", email:"ctrepanier@outlook.com", password:"1q2w3e", city:"Québec", family_doctor:"Yves Bolduc", sex:"Women", age:56, note:"Her knees hurts")
User.create(first_name:"Philippe", last_name:"Bolduc", email:"pbolduc2354@gmail.com", password:"1q2w3e", city:"Québec", family_doctor:"Yves Bolduc", sex:"Male", age:24, note:"Never seen a man in that shape! Great health")