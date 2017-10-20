class Comment < ApplicationRecord
  validates :content, presence: true

  belongs_to :user
  belongs_to :commentable, polymorphic: true

  has_many :votes, as: :votable, dependent: :destroy

end
