class Pet < ApplicationRecord

  scope :city, -> (city) {where city: city}
  scope :animal_type, -> (animal_type) {where animal_type: animal_type}
  scope :breed, -> (breed) {where breed: breed}
  scope :gender, -> (gender) {where gender: gender}
  # scope :size, -> (size) {where size: size}
  scope :age, -> (age) {where age: age}
  scope :status, -> (status) {where status: "A"}

  has_many :like_pets
  has_many :liked_by, through: :like_pets, source: :user


  CITIES = ["-City-", "Ajax", "Courtice", "Pickering", "Oshawa", "Port Perry", "Bowmanville", "Ballantree", "Markham", "Uxbridge", "Scarborough", "Toronto", "Richmond Hill",  "Vaughan", "Newmarket", "Pefferlaw", "Lindsay", "Port Hope", "Etobicoke", "Omemee", "Whitby", "York", "Zephyr"].sort_by! {|city| city}
  ANIMAL_TYPES = ["-Select an Animal-", "Dog", "Cat", "Rabbit", ["Small and Furry", "Small &amp; Furry"], "Reptile", "Horse", "Barnyard"]
  GENDERS = ["-Gender-", "M", "F"]
  AGES = ["-Age-", "Baby", "Young", "Adult", "Senior"]
  SIZES = ["-Size-", ["Small", "S"], ["Medium", "M"], ["Large", "L"], ["X-Large", "XL"]]

  Rabbit_breeds = ["American", "American Fuzzy Lop", "American Sable", "Angora Rabbit", "Belgian Hare", "Beveren", "Britannia Petite", "Bunny Rabbit", "Californian", "Champagne D'Argent", "Checkered Giant", "Chinchilla", "Cinnamon", "Creme D'Argent", "Dutch", "Dwarf", "Dwarf Eared", "English Lop", "English Spot", "Flemish Giant", "Florida White", "French Lop", "Harlequin", "Havana", "Himalayan", "Holland Lop", "Hotot", "Jersey Wooly", "Lilac", "Lionhead", "Lop Eared", "Mini Lop", "Mini Rex", "Netherland Dwarf", "New Zealand", "Palomino", "Polish", "Rex", "Rhinelander", "Satin", "Silver", "Silver Fox", "Silver Marten", "Tan"]

end