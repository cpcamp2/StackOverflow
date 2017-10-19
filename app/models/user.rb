class User < ApplicationRecord
	validates :username, :email, presence: true, uniqueness: true
  
  has_many :questions
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable
  
  has_secure_password

end