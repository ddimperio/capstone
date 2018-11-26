# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.create!(task: "Make the bed", notes: "change sheets", priority: "2", user_id: "1")
Task.create!(task: "Take out the Trash", notes: "Garbage men come tomorrow at 8am", priority: "1", user_id: "3")
Task.create!(task: "Pick up dog food", notes: "Buy this  certain dog food", priority: "3", user_id: "1")
Task.create!(task: "Pay light bill", notes: "Use Master Card NOT the Visa", priority: "5", user_id: "3")
Task.create!(task: "Walk the dog", notes: "", priority: "4", user_id: "2")
Task.create!(task: "Buy groceries", notes: "BUY BAGEL BITES", priority: "2", user_id: "1")
Task.create!(task: "Take kids to practice", notes: "3:00pm - 4:00pm", priority: "5", user_id: "2")
Task.create!(task: "Pack lunch for tomorrow", notes: "", priority: "1", user_id: "2")
Task.create!(task: "Buy lightbulbs", notes: "double check bulb size", priority: "1", user_id: "1")
Task.create!(task: "Mow the lawn", notes: "gas is on the shelf if needed", priority: "3", user_id: "3")