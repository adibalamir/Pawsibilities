class CreateCatBreedTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :cat_breed_traits do |t|
      t.string :breed
      t.integer :goodForNoviceOwner
      t.integer :likesKids
      t.integer :likesDogs
      t.integer :likesStrangers
      t.integer :likesFamily
      t.integer :sheds
      t.integer :size
      t.integer :activityLevel
      t.integer :toleratesBeingAlone
      t.integer :barks
      t.integer :easyToTrain
      t.integer :cleanliness
      t.timestamps
    end
  end
end
