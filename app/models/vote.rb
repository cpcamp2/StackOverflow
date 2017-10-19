class Vote < ApplicationRecord
  validates :vote, presence: true

  belongs_to :user
  belongs_to :votable, polymorphic: true
end
