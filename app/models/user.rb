class User < ApplicationRecord
	validates :username, :email, presence: true, uniqueness: true
  
  has_many :questions
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable


  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(username, plaintext_password)
    user = User.find_by(username: username)
    if user && user.password == plaintext_password
      return user
    else
      nil 
    end 
  end
end