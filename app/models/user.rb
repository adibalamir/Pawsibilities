class User < ApplicationRecord
  :authenticate_with_credentials
  has_secure_password
  has_many :like_pets
  has_many :likes, through: :like_pets, source: :pet
  validates_uniqueness_of :email,  :case_sensitive => false
  validates_presence_of :email

  def self.authenticate_with_credentials(email, password)
    email.downcase!
    user = User.find_by_email(email.strip)
    return user && user.authenticate(password)
  end
end
