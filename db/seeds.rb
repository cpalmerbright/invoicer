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

a = Employee.create(first_name: 'Joe', last_name: 'Smith', street_address: '123 Fake St', suburb: 'Brisbane', postcode: 4000, phone: '0400123456')
a.save
b = Employee.create(first_name: 'Sarah', last_name: 'Brown', street_address: '123 Fake St', suburb: 'Melbourne', postcode: 3000, phone: '0400123456')
b.save

c = Client.create(name: 'Apple', phone: '0400111222', street_address: '123 Main St', suburb: "San FranSydney", postcode: 2000, abn: 1234567890)
c.save
d = Client.create(name: '2RK', phone: '0412345678', street_address: '14 Vine St', suburb: 'Greenslopes', postcode: 4120)
d.save

j = Contact.create(first_name: 'Greg', last_name: 'Jones', company_id: a, phone: '0433333333')
j.save
k = Contact.create(first_name: 'Kylie', last_name: 'Butler', company_id: d, phone: '0400010010')
k.save

h = Invoice.create(employee: a, client: d)
h.save
i = Invoice.create(employee: b, client: d)
i.save

e = Job.new(start_date: 5.days.ago, end_date: 3.days.ago, rate: 9000, duration: 9, description: 'Third job', client: d, employee: a, invoice: h)
e.save
f = Job.new(start_date: 7.days.ago, end_date: 5.days.ago, rate: 9000, duration: 15, description: 'Another job', client: d, employee: a, invoice: h)
f.save
g = Job.new(start_date: 11.days.ago, end_date: 11.days.ago, rate: 9000, duration: 6, description: 'First job', client: d, employee: b, invoice: i)
g.save

