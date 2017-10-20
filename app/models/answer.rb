class Answer < ApplicationRecord
  validates :content, presence: true

  belongs_to :user
  belongs_to :question

  has_many :comments, as: :commentable, dependent: :destroy
  has_many :votes, as: :votable, dependent: :destroy

end
