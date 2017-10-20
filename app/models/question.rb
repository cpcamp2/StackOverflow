class Question < ApplicationRecord
  validates :title, :content, presence: true

  belongs_to :user
  has_many :answers
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :votes, as: :votable, dependent: :destroy

end
