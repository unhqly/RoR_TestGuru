# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: 'Mikhail', role: 'student', level: 0)
User.create(name: 'Roman', role: 'student', level: 1)
User.create(name: 'Anna', role: 'student', level: 2)
User.create(name: 'Nikita', role: 'student', level: 2)
User.create(name: 'Vladimir', role: 'teacher', level: 3)
User.create(name: 'Anastasiya', role: 'teacher', level: 3)

category_titles = ['Database', 'Backend', 'Frontend']
categories = []
test_titles = ['SQL', 'Ruby', 'JavaScript']
tests = []
question_bodies = ['What operator does SQL have?', 'Does SQL have "IF-ELSE" construction?', 
'Ruby has "RoR" framework', 'Ruby has "Django" framework', '"JS" stands for Jam Session ', 'JavaScript is a common frontend language']
questions = []

category_titles.each { |title| categories << Category.create(title: title) }

categories.each_with_index { |category, index| tests << Test.create(title: test_titles[index], level: rand(0..3), category_id: category.id) }

-------------------

tests.each do |test| 
  question_bodies.each { |body| questions <<  Question.create(body: body, test_id: test.id) }
end

-------------------

Question.create(body: 'What operator does SQL have?', test_id: 1)
Question.create(body: 'Does SQL have "IF-ELSE" construction?', test_id: 1)
Question.create(body: 'Ruby has "RoR" framework', test_id: 2)
Question.create(body: 'Ruby has "Django" framework', test_id: 2)
Question.create(body: '"JS" stands for Jam Session ', test_id: 3)
Question.create(body: 'JavaScript is a common frontend language', test_id: 3)

Answer.create(body:'OR', positive: true, question_id: 1)
Answer.create(body:'XOR', positive: false, question_id: 1)
Answer.create(body:'Yes', positive: false, question_id: 2)
Answer.create(body:'No', positive: true, question_id: 2)
Answer.create(body:'Yes', positive: true, question_id: 3)
Answer.create(body:'No', positive: false, question_id: 3)
Answer.create(body:'Yes', positive: false, question_id: 4)
Answer.create(body:'No', positive: true, question_id: 4)
Answer.create(body:'Yes', positive: false, question_id: 5)
Answer.create(body:'No', positive: true, question_id: 5)
Answer.create(body:'Yes', positive: true, question_id: 6)
Answer.create(body:'No', positive: false, question_id: 6)

ResultTest.create(user_id: 1, test_id: 1, passed: false)
ResultTest.create(user_id: 1, test_id: 2, passed: false)
ResultTest.create(user_id: 2, test_id: 2, passed: false)
ResultTest.create(user_id: 2, test_id: 3, passed: true)
ResultTest.create(user_id: 3, test_id: 1, passed: true)
ResultTest.create(user_id: 3, test_id: 3, passed: false)
ResultTest.create(user_id: 4, test_id: 1, passed: true)

Result.create(user_id: 1, test_id: 1, question_id: 1, answer_id: 2, answer_positive: false)
Result.create(user_id: 1, test_id: 1, question_id: 2, answer_id: 3, answer_positive: false)
Result.create(user_id: 1, test_id: 2, question_id: 3, answer_id: 6, answer_positive: false)
Result.create(user_id: 1, test_id: 2, question_id: 4, answer_id: 7, answer_positive: false)

Result.create(user_id: 2, test_id: 2, question_id: 3, answer_id: 6, answer_positive: false)
Result.create(user_id: 2, test_id: 2, question_id: 4, answer_id: 7, answer_positive: false)
Result.create(user_id: 2, test_id: 3, question_id: 5, answer_id: 10, answer_positive: true)
Result.create(user_id: 2, test_id: 3, question_id: 6, answer_id: 11, answer_positive: true)

Result.create(user_id: 3, test_id: 1, question_id: 1, answer_id: 1, answer_positive: true)
Result.create(user_id: 3, test_id: 1, question_id: 2, answer_id: 4, answer_positive: true)
Result.create(user_id: 3, test_id: 3, question_id: 5, answer_id: 9, answer_positive: false)
Result.create(user_id: 3, test_id: 3, question_id: 6, answer_id: 11, answer_positive: true)

Result.create(user_id: 4, test_id: 1, question_id: 1, answer_id: 1, answer_positive: true)
Result.create(user_id: 4, test_id: 1, question_id: 2, answer_id: 4, answer_positive: true)
