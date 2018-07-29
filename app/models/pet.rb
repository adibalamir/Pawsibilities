class Pet < ApplicationRecord
  scope :city, -> (city) {where city: city}
  scope :animal_type, -> (animal_type) {where animal_type: animal_type}
  scope :breed, -> (breed) {where breed: breed}
  scope :gender, -> (gender) {where gender: gender}
  # scope :size, -> (size) {where size: size}
  scope :age, -> (age) {where age: age}
  scope :status, -> (status) {where status: "A"}
end
