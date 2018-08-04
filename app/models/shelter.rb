class Shelter < ApplicationRecord
  :authenticate_with_credentials
  has_secure_password

  def self.authenticate_with_credentials(email, password)
    email.downcase!
    user = User.find_by_email(email.strip)
    return user && user.authenticate(password)
  end

  def generate_shelter_id

  end

  PROVINCES =
  [
    ["Alberta", "AB"],
    ["British Columbia", "BC"],
    ["Manitoba", "MB"],
    ["New Brunswick", "NB"],
    ["Newfoundland and Labrador", "NL"],
    ["Northwest Territories", "NT"],
    ["Nova Scotia", "NS"],
    ["Nunavut", "NU"],
    ["Ontario", "ON"],
    ["Prince Edward Island", "PE"],
    ["Quebec", "QC"],
    ["Saskatchewan", "SK"],
    ["Yukon", "YT"]
  ]
end
