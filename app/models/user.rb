class User < ApplicationRecord
  has_many :questions, foreign_key: :author_id
  has_many :answers, foreign_key: :author_id
  has_many :comments, foreign_key: :commenter_id
  has_many :votes, foreign_key: :voter_id
	validates :username, :email, presence: true, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, plaintext_password)
    user = User.find_by(username: username)
    if user && user.password == plaintext_password
      return user
    else
      nil 
    end 
  end
end