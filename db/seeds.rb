# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

n1 = Newspaper.create!(title: "The Wall Street Journal", editor: "Gerard Baker")
n2 = Newspaper.create!(title: "USA Today", editor: "John Hillkirk")
n3 = Newspaper.create!(title: "The New York Times", editor: "Jill Abramson")

s1 = SubscriptionPlan.create!(newspaper_id: 1, daily: true, price: 29.99)
s2 = SubscriptionPlan.create!(newspaper_id: 1, daily: false, price: 14.99)
s3 = SubscriptionPlan.create!(newspaper_id: 2, daily: true, price: 27.99)
s4 = SubscriptionPlan.create!(newspaper_id: 2, daily: false, price: 12.99)
s5 = SubscriptionPlan.create!(newspaper_id: 3, daily: true, price: 25.99)
s6 = SubscriptionPlan.create!(newspaper_id: 3, daily: false, price: 10.99)

