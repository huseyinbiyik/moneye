# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create(name: "Huseyin", email: "tahahuseyinb@gmail.com", password: "123456")
user2 = User.create(name: "Michael", email: "michael@gmail.com", password: "123456")


group1 = Group.create(name: "Food", icon: "https://pbs.twimg.com/profile_images/730712156430274561/HtrV3vxt_400x400.jpg", user_id: user1.id)
group2 = Group.create(name: "Cosmetics", icon: "https://pbs.twimg.com/profile_images/730712156430274561/HtrV3vxt_400x400.jpg", user_id: user1.id)
group3 = Group.create(name: "Sport", icon: "https://pbs.twimg.com/profile_images/730712156430274561/HtrV3vxt_400x400.jpg", user_id: user2.id)
group4 = Group.create(name: "Health", icon: "https://pbs.twimg.com/profile_images/730712156430274561/HtrV3vxt_400x400.jpg", user_id: user2.id)

expense1 = group1.expenses.create(name: "Bought beer #1", amount: "25", user_id: user1.id)
expense2 = group1.expenses.create(name: "Bought jalapeno peer #2", amount: "10", user_id: user1.id)

expense3 = group2.expenses.create(name: "Bought sun cream #1", amount: "30", user_id: user1.id)
expense4 = group2.expenses.create(name: "Bought tooth brush #2", amount: "10", user_id: user1.id)

expense5 = group3.expenses.create(name: "Bought pinpon ball #1", amount: "100", user_id: user2.id)
expense6 = group3.expenses.create(name: "Annually gym pay #2", amount: "1500", user_id: user2.id)

expense7 = group4.expenses.create(name: "Saw my doctor #1", amount: "100", user_id: user2.id)
expense8 = group4.expenses.create(name: "Saw my doctor #2", amount: "100", user_id: user2.id)



