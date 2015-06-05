require 'bcrypt'

class User < ActiveRecord::Base
  # Remember to create a migration!
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  validates :name, presence: true
  validates :email, presence: true
  validates :username, presence: true
  validates :password_hash, presence: true

  has_one :blog
  has_many :posts
end
