class Question < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :answers, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :votes, as: :voteable, dependent: :destroy
  
  validates :title, :content, presence: true
end
