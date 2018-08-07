class Shelter < ApplicationRecord
  :authenticate_with_credentials
  has_secure_password

  # validates_uniqueness_of :shelter_id
  # validates_presence_of :name, :email, :address, :phone

  # def self.authenticate_with_credentials(email, password)
  #   email.downcase!
  #   user = Shelter.find_by_email(email.strip)
  #   return user && user.authenticate(password)
  # end

end
