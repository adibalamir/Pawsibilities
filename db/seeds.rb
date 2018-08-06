require 'roo'
puts "Let's start dog breed seeding"

data = Roo::Excelx.new('./db/Dog_traits.xlsx')

DogBreedTrait.destroy_all

symbols = [
  :breed,
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
 @last = 203

until @index > @last do
  dogtraits.push(Hash[symbols.zip data.row(@index)])
  @index += 1
end

dogtraits.each do |breed|
  DogBreedTrait.create!(breed)
end

puts "Seeding for dog traits done!!!"

puts "Seeeding for cat traits-----------------------------------"

cat_excel = Roo::Excelx.new('./db/Cat_traits.xlsx')

cats_key = [
  :breed,
  :goodForNoviceOwner,
  :likesKids,
  :likesDogs,
  :likesStrangers,
  :likesFamily,
  :sheds,
  :size,
  :activityLevel,
  :toleratesBeingAlone,
  :barks,
  :easyToTrain,
  :cleanliness]

 cat_traits = []
 @one = 2
 @fifteen = 15

until @one > @fifteen do
  cat_traits.push(Hash[cats_key.zip cat_excel.row(@one)])
  @one += 1
end

cat_traits.each do |breed|
  CatBreedTrait.create!(breed)
end

puts "Cat traits done!"

puts "Seeding Dog Highlights------------------------------------"

doghighlights = []
@start = 1
@final = 199

mypets = Roo::Excelx.new("./db/Dog_highlights.xlsx")

key = [:breed, :highlights]


until @start > @final do
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
@final = 58

mycats = Roo::Excelx.new("./db/Cat_highlights.xlsx")

key = [:breed, :highlights]


until @start > @final do
  cathighlights << Hash[key.zip (mycats.row(@start))]
  @start += 1
end

cathighlights.each do |passage|
  CatHighlight.create!(passage)
end


puts "Seeding Cat Highlights done"