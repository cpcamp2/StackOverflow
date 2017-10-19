class Answers < ApplicationRecord
  belongs_to :author, class_name: "User"
  belongs_to :question, class_name: "Question"
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :votes, as: :voteable, dependent: :destroy
  
  validates :content, presence: true
end
