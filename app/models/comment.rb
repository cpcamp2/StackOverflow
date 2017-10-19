class Comment < ApplicationRecord
  validates :commenter, presence: true
end
