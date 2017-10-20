<<<<<<< HEAD
User.create(username: "cat", email: "cat@cat.com", password: "cat")
=======
User.delete_all
Question.delete_all

def user_args
	{username: Faker::LordOfTheRings.character,
	email: Faker::Internet.email,
	password_digest: Faker::Lorem.word}
end

def question_args
  { title: Faker::Lorem.sentence + "?",
    content: Faker::ChuckNorris.fact,
    user_id: User.all.sample.id }
end

def answer_args
  { content: Faker::Lorem.paragraph,
    user_id: User.all.sample.id,
    question_id: Question.all.sample.id }
end

30.times do
  User.find_or_create_by(user_args)
end

10.times do
  Question.create(question_args) 
end

10.times do
  Answers.create(answer_args)
end
>>>>>>> master
