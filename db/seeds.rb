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

puts "Seeding Dog Highlights------------------------------------"

doghighlights = []
@start = 1
@end = 195

mypets = Roo::Excelx.new("./db/pets_highlights.xlsx")

key = [:breed, :highlights]


until @start > @end do
  doghighlights << Hash[key.zip (mypets.row(@start))]
  @start += 1
end

doghighlights.each do |passage|
  DogHighlight.create!(passage)
end


puts "Seeding Dog Highlights done"

puts "Seeding Cat Highlights------------------------------------"

cathighlights = []
@start = 1
@end = 50

mypets = Roo::Excelx.new("./db/Cat_highlights.xlsx")

key = [:breed, :highlights]


until @start > @end do
  cathighlights << Hash[key.zip (mypets.row(@start))]
  @start += 1
end

cathighlights.each do |passage|
  CatHighlight.create!(passage)
end


puts "Seeding Cat Highlights done"