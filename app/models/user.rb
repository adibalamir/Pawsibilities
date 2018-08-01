class User < ApplicationRecord
  :authenticate_with_credentials
  has_secure_password
  has_many :favorites
  has_many :favorite_pets, through: :favorites, source: :favorited, source_type: 'Pet'

  def self.authenticate_with_credentials(email, password)
    email.downcase!
    user = User.find_by_email(email.strip)
    return user && user.authenticate(password)
  end
end
