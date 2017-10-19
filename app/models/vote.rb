class Vote < ApplicationRecord
  belongs_to :voter, class_name: "User"
  belongs_to :voteable, polymorphic: true
  # Remember to create a migration!
end
