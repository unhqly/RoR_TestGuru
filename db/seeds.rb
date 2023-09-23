# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_names = ['Mikhail', 'Roman', 'Anna', 'Nikita', 'Vladimir', 'Anastasiya']
roles = ['student', 'teacher']
users = []
category_titles = ['Category0', 'Category1', 'Category2']
categories = []
test_titles = ['Test0', 'Test1', 'Test2']
tests = []
question_bodies = ['Question0', 'Question1', 'Question2', 'Question3', 'Question4', 'Question5']
questions = []
answer_bodies = ['Yes', 'No']
answers = []
result_tests = []

user_names.each { |name| users << User.create(name: name, role: roles.sample, level: rand(0..3))}

category_titles.each { |title| categories << Category.create(title: title) }

categories.each { |category| tests << Test.create(title: test_titles.sample, level: rand(0..3), category_id: category.id, user_id: users.sample.id)}

tests.each do |test| 
  2.times { questions << Question.create(body: question_bodies.sample, test_id: test.id) }
end

questions.each { |question| answers << Answer.create(body: answer_bodies.sample, positive: [true, false].sample, question_id: question.id)}

tests.each { |test| result_tests << ResultTest.create(user_id: users.sample.id, test_id: test.id, passed: [true, false].sample)}
