class Question < ApplicationRecord
  validates :title, :content, presence: true
end
