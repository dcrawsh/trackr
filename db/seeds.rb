# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.create(first_name: 'Rachel', last_name: 'Connors', location_id: 3)

Training.create(name: 'Fire Safety', location_id:5)

EmployeeTraining.create(location_id: 5, employee_id: 13, training_id: 3, occurence: 12/22/1991 )