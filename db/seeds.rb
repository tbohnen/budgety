# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Transaction.create(paymentType: "Absa", paymentTo:"Test", amount:150.10)
Transaction.create(paymentType: "CATS THIRD PARTY PAYMENT", paymentTo: "Liberty047", amount:530.50)
