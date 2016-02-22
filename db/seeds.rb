password = 'password'
user = User.create!(email:'admin@test.com',password: password, password_confirmation: password )

test1 = Test.create!(name:'Ruby On Rails Hard Test', description:'This is the test final test, you have to take it. And you have to pass it.')

q1 = Question.create!(test: test1, question: 'What is Ruby on Rails?')

a1 = Answer.create!(question: q1, answer:'Web development framework', correct: true)
a2 = Answer.create!(question: q1, answer:'C++ language')
a3 = Answer.create!(question: q1, answer:'A framework for python')
