
class User < ActiveRecord::Base
  # Remember to create a migration!

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :github_username, presence: true
  validates :password, presence: true

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(args)
    user_to_authenticate = User.find_by(email: args[:email])
    if user_to_authenticate
      return user_to_authenticate if user_to_authenticate.password == args[:password]
    end
    nil
  end
end
