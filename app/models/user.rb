class User < ApplicationRecord
	validates :username, :email, presence: true, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, plaintext_password)
    user = User.find_by(username: username)
    if user && user.password == plaintext_password
      retuen user
    else
      nil 
    end 
  end
end

