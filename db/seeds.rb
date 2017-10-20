User.delete_all
Question.delete_all

def user_args
	{username: Faker::LordOfTheRings.character,
	email: Faker::Internet.email,
	password_digest: Faker::Lorem.word}
end


30.times do
  User.find_or_create_by(user_args)
end
