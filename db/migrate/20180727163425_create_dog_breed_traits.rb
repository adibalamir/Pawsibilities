class CreateDogBreedTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_breed_traits do |t|
      t.string :breed
      t.integer :adaptability
      t.integer :friendliness
      t.integer :grooming
      t.integer :trainability
      t.integer :activityLevel
      t.integer :goodForApartment
      t.integer :goodForNoviceOwner
      t.integer :sensitivity
      t.integer :toleratesBeingAlone
      t.integer :toleratesCold
      t.integer :toleratesHot
      t.integer :likesFamily
      t.integer :likesKids
      t.integer :likesDogs
      t.integer :likesStrangers
      t.integer :sheds
      t.integer :drools
      t.integer :easyToGroom
      t.integer :potentialForWeightGain
      t.integer :size
      t.integer :easyToTrain
      t.integer :intelligent
      t.integer :likesFetch
      t.integer :preyDrive
      t.integer :barks
      t.integer :wanders
      t.integer :energyLevel
      t.integer :exerciseIntensity
      t.integer :exerciseNeeds
      t.integer :playfulness
      t.timestamps
    end
  end
end
