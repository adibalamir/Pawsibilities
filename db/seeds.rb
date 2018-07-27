require 'roo'

data = Roo::Excelx.new('./db/Breed_traits.xlsx')

puts "Let's start dog breed seeding"

DogBreedTrait.destroy_all

symbols = [:breed,
 :adaptability,
 :friendliness,
 :grooming,
 :trainability,
 :activityLevel,
 :goodForApartment,
 :goodForNoviceOwner,
 :sensitivity,
 :toleratesBeingAlone,
 :toleratesCold,
 :toleratesHot,
 :likesFamily,
 :likesKids,
 :likesDogs,
 :likesStrangers,
 :sheds,
 :drools,
 :easyToGroom,
 :potentialForWeightGain,
 :size,
 :easyToTrain,
 :intelligent,
 :likesFetch,
 :preyDrive,
 :barks,
 :wanders,
 :energyLevel,
 :exerciseIntensity,
 :exerciseNeeds,
 :playfulness]

 dogtraits = []
 @index = 2
 @last = 200

until @index > @last do
  dogtraits.push(Hash[symbols.zip data.row(@index)])
  @index += 1
end

dogtraits.each do |breed|
  DogBreedTrait.create!(breed)
end



puts "Seeding for dog traits done!!!"