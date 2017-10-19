class Comment < ApplicationRecord
  validates :content, presence: true

  belongs_to :user
  belongs_to :commentable, polymorphic: true

  has_many :votes, as: :voteable, dependent: :destroy
  
end
