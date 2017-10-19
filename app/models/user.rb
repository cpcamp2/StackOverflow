class User < ApplicationRecord
	validates :username, :email, presence: true, uniqueness: true
  # Remember to create a migration!
end
