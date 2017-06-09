# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Client.delete_all
Contact.delete_all
Employee.delete_all
Invoice.delete_all
Job.delete_all

a = Employee.create(first_name: 'Joe', last_name: 'Smith', street_address: '123 Fake St', suburb: 'Brisbane', postcode: 4000)
